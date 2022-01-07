; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_frame.c_test_priority.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_frame.c_test_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@H2O_HTTP3_PRIORITY_FRAME_CAPACITY = common dso_local global i32 0, align 4
@H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM = common dso_local global i64 0, align 8
@H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT = common dso_local global i64 0, align 8
@H2O_HTTP3_FRAME_TYPE_PRIORITY = common dso_local global i64 0, align 8
@H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_priority() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @H2O_HTTP3_PRIORITY_FRAME_CAPACITY, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @h2o_mem_init_pool(i32* %1)
  %13 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 12345, i32* %17, align 8
  %18 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 67890, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 123, i32* %23, align 8
  %24 = call i64* @h2o_http3_encode_priority_frame(i64* %11, %struct.TYPE_9__* %2)
  %25 = ptrtoint i64* %24 to i64
  %26 = ptrtoint i64* %11 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 6
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = getelementptr inbounds i64, i64* %11, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = load i64, i64* @H2O_HTTP3_FRAME_TYPE_PRIORITY, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = getelementptr inbounds i64, i64* %11, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 2
  %43 = icmp eq i64 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44)
  %46 = call i32 @memset(%struct.TYPE_9__* %2, i32 0, i32 40)
  %47 = getelementptr inbounds i64, i64* %11, i64 2
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, 2
  %50 = call i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__* %2, i64* %47, i64 %49, i8** %3)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 12345
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 123
  %90 = zext i1 %89 to i32
  %91 = call i32 @ok(i32 %90)
  %92 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 12345, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = call i64* @h2o_http3_encode_priority_frame(i64* %11, %struct.TYPE_9__* %2)
  %99 = ptrtoint i64* %98 to i64
  %100 = ptrtoint i64* %11 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 8
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp eq i64 %103, 6
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = getelementptr inbounds i64, i64* %11, i64 0
  %108 = load i64, i64* %107, align 16
  %109 = load i64, i64* @H2O_HTTP3_FRAME_TYPE_PRIORITY, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ok(i32 %111)
  %113 = getelementptr inbounds i64, i64* %11, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sub i64 %115, 2
  %117 = icmp eq i64 %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = call i32 @memset(%struct.TYPE_9__* %2, i32 0, i32 40)
  %121 = getelementptr inbounds i64, i64* %11, i64 2
  %122 = load i64, i64* %6, align 8
  %123 = sub i64 %122, 2
  %124 = call i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__* %2, i64* %121, i64 %123, i8** %3)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @ok(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ok(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 12345
  %140 = zext i1 %139 to i32
  %141 = call i32 @ok(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ok(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @ok(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ok(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 123
  %161 = zext i1 %160 to i32
  %162 = call i32 @ok(i32 %161)
  %163 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 67890, i32* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = call i64* @h2o_http3_encode_priority_frame(i64* %11, %struct.TYPE_9__* %2)
  %170 = ptrtoint i64* %169 to i64
  %171 = ptrtoint i64* %11 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 8
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %6, align 8
  %175 = icmp eq i64 %174, 10
  %176 = zext i1 %175 to i32
  %177 = call i32 @ok(i32 %176)
  %178 = getelementptr inbounds i64, i64* %11, i64 0
  %179 = load i64, i64* %178, align 16
  %180 = load i64, i64* @H2O_HTTP3_FRAME_TYPE_PRIORITY, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @ok(i32 %182)
  %184 = getelementptr inbounds i64, i64* %11, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = sub i64 %186, 2
  %188 = icmp eq i64 %185, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @ok(i32 %189)
  %191 = call i32 @memset(%struct.TYPE_9__* %2, i32 0, i32 40)
  %192 = getelementptr inbounds i64, i64* %11, i64 2
  %193 = load i64, i64* %6, align 8
  %194 = sub i64 %193, 2
  %195 = call i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__* %2, i64* %192, i64 %194, i8** %3)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @ok(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @ok(i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 12345
  %211 = zext i1 %210 to i32
  %212 = call i32 @ok(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @ok(i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 67890
  %224 = zext i1 %223 to i32
  %225 = call i32 @ok(i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = call i32 @ok(i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 123
  %235 = zext i1 %234 to i32
  %236 = call i32 @ok(i32 %235)
  %237 = getelementptr inbounds i64, i64* %11, i64 2
  %238 = call i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__* %2, i64* %237, i64 1, i8** %3)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = call i32 @ok(i32 %241)
  %243 = getelementptr inbounds i64, i64* %11, i64 2
  %244 = load i64, i64* %6, align 8
  %245 = sub i64 %244, 1
  %246 = call i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__* %2, i64* %243, i64 %245, i8** %3)
  store i32 %246, i32* %7, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @ok(i32 %249)
  %251 = call i32 @h2o_mem_clear_pool(i32* %1)
  %252 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %252)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @h2o_mem_init_pool(i32*) #2

declare dso_local i64* @h2o_http3_encode_priority_frame(i64*, %struct.TYPE_9__*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @h2o_http3_decode_priority_frame(%struct.TYPE_9__*, i64*, i64, i8**) #2

declare dso_local i32 @h2o_mem_clear_pool(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
