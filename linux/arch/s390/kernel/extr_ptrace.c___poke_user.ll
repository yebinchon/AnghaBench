; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___poke_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___poke_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.user = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@PSW_MASK_USER = common dso_local global i64 0, align 8
@PSW_MASK_RI = common dso_local global i64 0, align 8
@PSW_USER_BITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSW_MASK_ASC = common dso_local global i64 0, align 8
@PSW_ASC_HOME = common dso_local global i64 0, align 8
@PSW_MASK_EA = common dso_local global i64 0, align 8
@PSW_MASK_BA = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@MACHINE_HAS_VX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @__poke_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__poke_user(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.user*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.user* null, %struct.user** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.user*, %struct.user** %8, align 8
  %13 = getelementptr inbounds %struct.user, %struct.user* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = ptrtoint i32** %14 to i64
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.user*, %struct.user** %8, align 8
  %20 = getelementptr inbounds %struct.user, %struct.user* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = ptrtoint i32* %22 to i64
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %17
  %26 = load i64, i64* @PSW_MASK_USER, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call i64 @is_ri_task(%struct.task_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @PSW_MASK_RI, align 8
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %32 ]
  %35 = load i64, i64* %10, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @PSW_USER_BITS, align 8
  %39 = xor i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %239

47:                                               ; preds = %33
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @PSW_MASK_ASC, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* @PSW_ASC_HOME, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %239

56:                                               ; preds = %47
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @PSW_MASK_EA, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @PSW_MASK_BA, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %239

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %17
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %73 = call %struct.TYPE_12__* @task_pt_regs(%struct.task_struct* %72)
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = ptrtoint i32* %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %75, %76
  %78 = inttoptr i64 %77 to i64*
  store i64 %71, i64* %78, align 8
  br label %238

79:                                               ; preds = %3
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.user*, %struct.user** %8, align 8
  %82 = getelementptr inbounds %struct.user, %struct.user* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = ptrtoint i32* %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %79
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.user*, %struct.user** %8, align 8
  %89 = getelementptr inbounds %struct.user, %struct.user* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = ptrtoint i32** %90 to i64
  %92 = sub nsw i64 %87, %91
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.user*, %struct.user** %8, align 8
  %95 = getelementptr inbounds %struct.user, %struct.user* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 15
  %99 = ptrtoint i32* %98 to i64
  %100 = icmp eq i64 %93, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %86
  %102 = load i64, i64* %7, align 8
  %103 = ashr i64 %102, 32
  %104 = trunc i64 %103 to i32
  %105 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 15
  store i32 %104, i32* %109, align 4
  br label %119

110:                                              ; preds = %86
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %113 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = ptrtoint i32** %114 to i64
  %116 = load i64, i64* %9, align 8
  %117 = add nsw i64 %115, %116
  %118 = inttoptr i64 %117 to i64*
  store i64 %111, i64* %118, align 8
  br label %119

119:                                              ; preds = %110, %101
  br label %237

120:                                              ; preds = %79
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.user*, %struct.user** %8, align 8
  %123 = getelementptr inbounds %struct.user, %struct.user* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = ptrtoint i32* %124 to i64
  %126 = icmp eq i64 %121, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %130 = call %struct.TYPE_12__* @task_pt_regs(%struct.task_struct* %129)
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %236

132:                                              ; preds = %120
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.user*, %struct.user** %8, align 8
  %135 = getelementptr inbounds %struct.user, %struct.user* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = ptrtoint %struct.TYPE_8__* %136 to i64
  %138 = icmp slt i64 %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %239

140:                                              ; preds = %132
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.user*, %struct.user** %8, align 8
  %143 = getelementptr inbounds %struct.user, %struct.user* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = ptrtoint i32* %145 to i64
  %147 = icmp eq i64 %141, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %140
  %149 = load i64, i64* %7, align 8
  %150 = trunc i64 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %7, align 8
  %154 = load i32, i32* @BITS_PER_LONG, align 4
  %155 = sub nsw i32 %154, 32
  %156 = zext i32 %155 to i64
  %157 = ashr i64 %153, %156
  %158 = call i64 @test_fp_ctl(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152, %148
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %239

163:                                              ; preds = %152
  %164 = load i64, i64* %7, align 8
  %165 = load i32, i32* @BITS_PER_LONG, align 4
  %166 = sub nsw i32 %165, 32
  %167 = zext i32 %166 to i64
  %168 = ashr i64 %164, %167
  %169 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %170 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  store i64 %168, i64* %172, align 8
  br label %234

173:                                              ; preds = %140
  %174 = load i64, i64* %6, align 8
  %175 = load %struct.user*, %struct.user** %8, align 8
  %176 = getelementptr inbounds %struct.user, %struct.user* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 1
  %179 = ptrtoint %struct.TYPE_8__* %178 to i64
  %180 = icmp slt i64 %174, %179
  br i1 %180, label %181, label %213

181:                                              ; preds = %173
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.user*, %struct.user** %8, align 8
  %184 = getelementptr inbounds %struct.user, %struct.user* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = ptrtoint i32* %186 to i64
  %188 = sub nsw i64 %182, %187
  store i64 %188, i64* %9, align 8
  %189 = load i64, i64* @MACHINE_HAS_VX, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %181
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %194 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = mul nsw i64 2, %198
  %200 = add nsw i64 %197, %199
  %201 = inttoptr i64 %200 to i64*
  store i64 %192, i64* %201, align 8
  br label %212

202:                                              ; preds = %181
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %205 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %9, align 8
  %210 = add nsw i64 %208, %209
  %211 = inttoptr i64 %210 to i64*
  store i64 %203, i64* %211, align 8
  br label %212

212:                                              ; preds = %202, %191
  br label %233

213:                                              ; preds = %173
  %214 = load i64, i64* %6, align 8
  %215 = load %struct.user*, %struct.user** %8, align 8
  %216 = getelementptr inbounds %struct.user, %struct.user* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = ptrtoint i32* %218 to i64
  %220 = icmp slt i64 %214, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %213
  %222 = load %struct.user*, %struct.user** %8, align 8
  %223 = getelementptr inbounds %struct.user, %struct.user* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = ptrtoint i32* %224 to i64
  %226 = load i64, i64* %6, align 8
  %227 = sub nsw i64 %226, %225
  store i64 %227, i64* %6, align 8
  %228 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* %7, align 8
  %231 = call i32 @__poke_user_per(%struct.task_struct* %228, i64 %229, i64 %230)
  br label %232

232:                                              ; preds = %221, %213
  br label %233

233:                                              ; preds = %232, %212
  br label %234

234:                                              ; preds = %233, %163
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235, %127
  br label %237

237:                                              ; preds = %236, %119
  br label %238

238:                                              ; preds = %237, %70
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %160, %139, %66, %53, %44
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i64 @is_ri_task(%struct.task_struct*) #1

declare dso_local %struct.TYPE_12__* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @test_fp_ctl(i64) #1

declare dso_local i32 @__poke_user_per(%struct.task_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
