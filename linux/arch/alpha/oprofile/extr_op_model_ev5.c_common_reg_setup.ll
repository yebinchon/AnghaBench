; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_common_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_common_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i32, i32, i32, i32, i32 }
%struct.op_counter_config = type { i64, i64, i32 }
%struct.op_system_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*, i32, i32)* @common_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_reg_setup(%struct.op_register_config* %0, %struct.op_counter_config* %1, %struct.op_system_config* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.op_register_config*, align 8
  %7 = alloca %struct.op_counter_config*, align 8
  %8 = alloca %struct.op_system_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %6, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %7, align 8
  store %struct.op_system_config* %2, %struct.op_system_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %119, %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %122

22:                                               ; preds = %19
  %23 = load %struct.op_counter_config*, %struct.op_counter_config** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %23, i64 %25
  %27 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load %struct.op_counter_config*, %struct.op_counter_config** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %29, i64 %31
  %33 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  br label %119

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* %15, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64 60, i64* %15, align 8
  br label %49

44:                                               ; preds = %40
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %45, 43
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 69, i64* %15, align 8
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i64, i64* %15, align 8
  %52 = icmp ult i64 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = shl i64 %54, 31
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = or i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  br label %118

60:                                               ; preds = %50
  %61 = load i64, i64* %15, align 8
  %62 = icmp ult i64 %61, 24
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %117

64:                                               ; preds = %60
  %65 = load i64, i64* %15, align 8
  %66 = icmp ult i64 %65, 40
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64, i64* %15, align 8
  %69 = sub i64 %68, 24
  %70 = shl i64 %69, 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = or i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %116

75:                                               ; preds = %64
  %76 = load i64, i64* %15, align 8
  %77 = icmp ult i64 %76, 48
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i64, i64* %15, align 8
  %80 = sub i64 %79, 40
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 %80, %82
  %84 = or i64 %83, 240
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = or i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  br label %115

89:                                               ; preds = %75
  %90 = load i64, i64* %15, align 8
  %91 = icmp ult i64 %90, 64
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i64, i64* %15, align 8
  %94 = sub i64 %93, 48
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = or i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %114

99:                                               ; preds = %89
  %100 = load i64, i64* %15, align 8
  %101 = icmp ult i64 %100, 72
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i64, i64* %15, align 8
  %104 = sub i64 %103, 64
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = shl i64 %104, %106
  %108 = or i64 %107, 15
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = or i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %102, %99
  br label %114

114:                                              ; preds = %113, %92
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %67
  br label %117

117:                                              ; preds = %116, %63
  br label %118

118:                                              ; preds = %117, %53
  br label %119

119:                                              ; preds = %118, %36
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %19

122:                                              ; preds = %19
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.op_register_config*, %struct.op_register_config** %6, align 8
  %125 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %12, align 4
  %126 = load %struct.op_system_config*, %struct.op_system_config** %8, align 8
  %127 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = shl i32 %131, 9
  %133 = load i32, i32* %12, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load %struct.op_system_config*, %struct.op_system_config** %8, align 8
  %136 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = shl i32 %140, 8
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load %struct.op_system_config*, %struct.op_system_config** %8, align 8
  %145 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = shl i32 %149, 30
  %151 = load i32, i32* %12, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.op_register_config*, %struct.op_register_config** %6, align 8
  %155 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %228, %122
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %231

159:                                              ; preds = %156
  %160 = load %struct.op_counter_config*, %struct.op_counter_config** %7, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %160, i64 %162
  %164 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %18, align 8
  %166 = load %struct.op_counter_config*, %struct.op_counter_config** %7, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %166, i64 %168
  %170 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %159
  br label %228

174:                                              ; preds = %159
  %175 = load i64, i64* %18, align 8
  %176 = icmp ule i64 %175, 256
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i64 256, i64* %18, align 8
  store i64 3, i64* %17, align 8
  store i64 256, i64* %16, align 8
  br label %190

178:                                              ; preds = %174
  %179 = load i32, i32* %11, align 4
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 16384, i32 65536
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %16, align 8
  store i64 2, i64* %17, align 8
  %184 = load i64, i64* %18, align 8
  %185 = load i64, i64* %16, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %178
  %188 = load i64, i64* %16, align 8
  store i64 %188, i64* %18, align 8
  br label %189

189:                                              ; preds = %187, %178
  br label %190

190:                                              ; preds = %189, %177
  %191 = load i64, i64* %18, align 8
  %192 = load %struct.op_counter_config*, %struct.op_counter_config** %7, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %192, i64 %194
  %196 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %195, i32 0, i32 1
  store i64 %191, i64* %196, align 8
  %197 = load i64, i64* %17, align 8
  %198 = load i32, i32* %11, align 4
  %199 = mul nsw i32 %198, 2
  %200 = sub nsw i32 8, %199
  %201 = zext i32 %200 to i64
  %202 = shl i64 %197, %201
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = or i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %12, align 4
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %18, align 8
  %209 = sub i64 %207, %208
  %210 = load i32, i32* %11, align 4
  %211 = mul nsw i32 16, %210
  %212 = sub nsw i32 48, %211
  %213 = zext i32 %212 to i64
  %214 = shl i64 %209, %213
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = or i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %13, align 4
  %219 = load i64, i64* %18, align 8
  %220 = load i64, i64* %16, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %190
  %223 = load i32, i32* %11, align 4
  %224 = shl i32 1, %223
  %225 = load i32, i32* %14, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %222, %190
  br label %228

228:                                              ; preds = %227, %173
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %156

231:                                              ; preds = %156
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.op_register_config*, %struct.op_register_config** %6, align 8
  %234 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load %struct.op_register_config*, %struct.op_register_config** %6, align 8
  %237 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load %struct.op_register_config*, %struct.op_register_config** %6, align 8
  %240 = getelementptr inbounds %struct.op_register_config, %struct.op_register_config* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
