; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_scratch_tests.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_scratch_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ALIGNMENT = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_NONE = common dso_local global i32 0, align 4
@counting_illegal_callback_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_scratch_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = load i32, i32* @ALIGNMENT, align 4
  %9 = add nsw i32 500, %8
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* @ALIGNMENT, align 4
  %12 = sdiv i32 %10, %11
  %13 = load i32, i32* @ALIGNMENT, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %16 = load i32, i32* @SECP256K1_CONTEXT_NONE, align 4
  %17 = call %struct.TYPE_17__* @secp256k1_context_create(i32 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = load i32, i32* @counting_illegal_callback_fn, align 4
  %20 = call i32 @secp256k1_context_set_illegal_callback(%struct.TYPE_17__* %18, i32 %19, i32* %2)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load i32, i32* @counting_illegal_callback_fn, align 4
  %23 = call i32 @secp256k1_context_set_error_callback(%struct.TYPE_17__* %21, i32 %22, i32* %2)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = call %struct.TYPE_16__* @secp256k1_scratch_space_create(%struct.TYPE_17__* %24, i32 1000)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @CHECK(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @CHECK(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = call i32 @secp256k1_scratch_max_allocation(i32* %35, %struct.TYPE_16__* %36, i32 0)
  %38 = icmp eq i32 %37, 1000
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = call i32 @secp256k1_scratch_max_allocation(i32* %42, %struct.TYPE_16__* %43, i32 1)
  %45 = load i32, i32* @ALIGNMENT, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sub nsw i32 1000, %46
  %48 = icmp eq i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ALIGNMENT, align 4
  %61 = srem i32 %59, %60
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @CHECK(i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = call i64 @secp256k1_scratch_checkpoint(i32* %66, %struct.TYPE_16__* %67)
  store i64 %68, i64* %3, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = call i32* @secp256k1_scratch_alloc(i32* %70, %struct.TYPE_16__* %71, i32 500)
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = call i32 @secp256k1_scratch_max_allocation(i32* %77, %struct.TYPE_16__* %78, i32 0)
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %1, align 8
  %82 = sub i64 1000, %81
  %83 = icmp eq i64 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @CHECK(i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = call i32 @secp256k1_scratch_max_allocation(i32* %87, %struct.TYPE_16__* %88, i32 1)
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %1, align 8
  %92 = sub i64 1000, %91
  %93 = load i32, i32* @ALIGNMENT, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = sub i64 %92, %95
  %97 = icmp eq i64 %90, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @CHECK(i32 %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @CHECK(i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ALIGNMENT, align 4
  %110 = srem i32 %108, %109
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @CHECK(i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = call i32* @secp256k1_scratch_alloc(i32* %115, %struct.TYPE_16__* %116, i32 500)
  %118 = icmp eq i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @CHECK(i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = call i32 @secp256k1_scratch_max_allocation(i32* %122, %struct.TYPE_16__* %123, i32 0)
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %1, align 8
  %127 = sub i64 1000, %126
  %128 = icmp eq i64 %125, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @CHECK(i32 %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = call i32 @secp256k1_scratch_max_allocation(i32* %132, %struct.TYPE_16__* %133, i32 1)
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %1, align 8
  %137 = sub i64 1000, %136
  %138 = load i32, i32* @ALIGNMENT, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = sub i64 %137, %140
  %142 = icmp eq i64 %135, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @CHECK(i32 %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @CHECK(i32 %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ALIGNMENT, align 4
  %155 = srem i32 %153, %154
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @CHECK(i32 %157)
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = load i64, i64* %3, align 8
  %163 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %160, %struct.TYPE_16__* %161, i64 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @CHECK(i32 %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = call i32 @secp256k1_scratch_max_allocation(i32* %171, %struct.TYPE_16__* %172, i32 0)
  %174 = icmp eq i32 %173, 1000
  %175 = zext i1 %174 to i32
  %176 = call i32 @CHECK(i32 %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %180 = call i32* @secp256k1_scratch_alloc(i32* %178, %struct.TYPE_16__* %179, i32 500)
  %181 = icmp ne i32* %180, null
  %182 = zext i1 %181 to i32
  %183 = call i32 @CHECK(i32 %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @CHECK(i32 %188)
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = call i64 @secp256k1_scratch_checkpoint(i32* %191, %struct.TYPE_16__* %192)
  store i64 %193, i64* %4, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = load i64, i64* %3, align 8
  %198 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %195, %struct.TYPE_16__* %196, i64 %197)
  %199 = load i32, i32* %2, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @CHECK(i32 %201)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = load i64, i64* %4, align 8
  %207 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %204, %struct.TYPE_16__* %205, i64 %206)
  %208 = load i32, i32* %2, align 4
  %209 = icmp eq i32 %208, 1
  %210 = zext i1 %209 to i32
  %211 = call i32 @CHECK(i32 %210)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %215 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %213, %struct.TYPE_16__* %214, i64 -1)
  %216 = load i32, i32* %2, align 4
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i32
  %219 = call i32 @CHECK(i32 %218)
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = call i32 @secp256k1_scratch_space_destroy(%struct.TYPE_17__* %220, %struct.TYPE_16__* %221)
  %223 = call i32 @memset(%struct.TYPE_16__* %7, i32 0, i32 4)
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %6, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %227 = call i32 @secp256k1_scratch_max_allocation(i32* %225, %struct.TYPE_16__* %226, i32 0)
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = call i32 @CHECK(i32 %230)
  %232 = load i32, i32* %2, align 4
  %233 = icmp eq i32 %232, 3
  %234 = zext i1 %233 to i32
  %235 = call i32 @CHECK(i32 %234)
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = call i32* @secp256k1_scratch_alloc(i32* %237, %struct.TYPE_16__* %238, i32 500)
  %240 = icmp eq i32* %239, null
  %241 = zext i1 %240 to i32
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i32, i32* %2, align 4
  %244 = icmp eq i32 %243, 4
  %245 = zext i1 %244 to i32
  %246 = call i32 @CHECK(i32 %245)
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %249 = call i32 @secp256k1_scratch_space_destroy(%struct.TYPE_17__* %247, %struct.TYPE_16__* %248)
  %250 = load i32, i32* %2, align 4
  %251 = icmp eq i32 %250, 5
  %252 = zext i1 %251 to i32
  %253 = call i32 @CHECK(i32 %252)
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %255 = call i32 @secp256k1_scratch_space_destroy(%struct.TYPE_17__* %254, %struct.TYPE_16__* null)
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = call i32 @secp256k1_context_destroy(%struct.TYPE_17__* %256)
  ret void
}

declare dso_local %struct.TYPE_17__* @secp256k1_context_create(i32) #1

declare dso_local i32 @secp256k1_context_set_illegal_callback(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @secp256k1_context_set_error_callback(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @secp256k1_scratch_space_create(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_scratch_max_allocation(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @secp256k1_scratch_checkpoint(i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @secp256k1_scratch_alloc(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @secp256k1_scratch_apply_checkpoint(i32*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @secp256k1_scratch_space_destroy(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @secp256k1_context_destroy(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
