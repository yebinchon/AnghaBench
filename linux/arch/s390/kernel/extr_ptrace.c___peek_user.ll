; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___peek_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ptrace.c___peek_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64* }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.user = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@PSW_MASK_USER = common dso_local global i64 0, align 8
@PSW_MASK_RI = common dso_local global i64 0, align 8
@PSW_USER_BITS = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@MACHINE_HAS_VX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64)* @__peek_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__peek_user(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.user*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.user* null, %struct.user** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.user*, %struct.user** %5, align 8
  %10 = getelementptr inbounds %struct.user, %struct.user* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = ptrtoint i32** %11 to i64
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call %struct.TYPE_12__* @task_pt_regs(%struct.task_struct* %15)
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = ptrtoint i32* %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.user*, %struct.user** %5, align 8
  %25 = getelementptr inbounds %struct.user, %struct.user* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = ptrtoint i32* %27 to i64
  %29 = icmp eq i64 %23, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %14
  %31 = load i64, i64* @PSW_MASK_USER, align 8
  %32 = load i64, i64* @PSW_MASK_RI, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @PSW_USER_BITS, align 8
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %30, %14
  br label %184

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.user*, %struct.user** %5, align 8
  %43 = getelementptr inbounds %struct.user, %struct.user* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = ptrtoint i32* %44 to i64
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.user*, %struct.user** %5, align 8
  %50 = getelementptr inbounds %struct.user, %struct.user* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = ptrtoint i32** %51 to i64
  %53 = sub nsw i64 %48, %52
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.user*, %struct.user** %5, align 8
  %56 = getelementptr inbounds %struct.user, %struct.user* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 15
  %60 = ptrtoint i32* %59 to i64
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %47
  %63 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 15
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %68, 32
  store i64 %69, i64* %7, align 8
  br label %79

70:                                               ; preds = %47
  %71 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = ptrtoint i64** %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %74, %75
  %77 = inttoptr i64 %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %70, %62
  br label %183

80:                                               ; preds = %40
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.user*, %struct.user** %5, align 8
  %83 = getelementptr inbounds %struct.user, %struct.user* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = ptrtoint i32* %84 to i64
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %89 = call %struct.TYPE_12__* @task_pt_regs(%struct.task_struct* %88)
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  br label %182

92:                                               ; preds = %80
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.user*, %struct.user** %5, align 8
  %95 = getelementptr inbounds %struct.user, %struct.user* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = ptrtoint %struct.TYPE_8__* %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i64 0, i64* %7, align 8
  br label %181

100:                                              ; preds = %92
  %101 = load i64, i64* %4, align 8
  %102 = load %struct.user*, %struct.user** %5, align 8
  %103 = getelementptr inbounds %struct.user, %struct.user* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = ptrtoint i32* %105 to i64
  %107 = icmp eq i64 %101, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %110 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  %114 = load i32, i32* @BITS_PER_LONG, align 4
  %115 = sub nsw i32 %114, 32
  %116 = load i64, i64* %7, align 8
  %117 = zext i32 %115 to i64
  %118 = shl i64 %116, %117
  store i64 %118, i64* %7, align 8
  br label %180

119:                                              ; preds = %100
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.user*, %struct.user** %5, align 8
  %122 = getelementptr inbounds %struct.user, %struct.user* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 1
  %125 = ptrtoint %struct.TYPE_8__* %124 to i64
  %126 = icmp slt i64 %120, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %119
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.user*, %struct.user** %5, align 8
  %130 = getelementptr inbounds %struct.user, %struct.user* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = ptrtoint i32* %132 to i64
  %134 = sub nsw i64 %128, %133
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* @MACHINE_HAS_VX, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %127
  %138 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %139 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = mul nsw i64 2, %143
  %145 = add nsw i64 %142, %144
  %146 = inttoptr i64 %145 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %7, align 8
  br label %158

148:                                              ; preds = %127
  %149 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %150 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = add nsw i64 %153, %154
  %156 = inttoptr i64 %155 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %148, %137
  br label %179

159:                                              ; preds = %119
  %160 = load i64, i64* %4, align 8
  %161 = load %struct.user*, %struct.user** %5, align 8
  %162 = getelementptr inbounds %struct.user, %struct.user* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = ptrtoint i32* %164 to i64
  %166 = icmp slt i64 %160, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %159
  %168 = load %struct.user*, %struct.user** %5, align 8
  %169 = getelementptr inbounds %struct.user, %struct.user* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = ptrtoint i32* %170 to i64
  %172 = load i64, i64* %4, align 8
  %173 = sub nsw i64 %172, %171
  store i64 %173, i64* %4, align 8
  %174 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %175 = load i64, i64* %4, align 8
  %176 = call i64 @__peek_user_per(%struct.task_struct* %174, i64 %175)
  store i64 %176, i64* %7, align 8
  br label %178

177:                                              ; preds = %159
  store i64 0, i64* %7, align 8
  br label %178

178:                                              ; preds = %177, %167
  br label %179

179:                                              ; preds = %178, %158
  br label %180

180:                                              ; preds = %179, %108
  br label %181

181:                                              ; preds = %180, %99
  br label %182

182:                                              ; preds = %181, %87
  br label %183

183:                                              ; preds = %182, %79
  br label %184

184:                                              ; preds = %183, %39
  %185 = load i64, i64* %7, align 8
  ret i64 %185
}

declare dso_local %struct.TYPE_12__* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @__peek_user_per(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
