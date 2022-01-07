; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_cache_digests.c_test_decode.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_cache_digests.c_test_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"AeLA\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"https://127.0.0.1.xip.io:8081/cache-digests.cgi/hello.js\00", align 1
@H2O_CACHE_DIGESTS_STATE_FRESH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"https://127.0.0.1.xip.io:8081/notfound.js\00", align 1
@H2O_CACHE_DIGESTS_STATE_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"FOO; stale, AcA; validators; complete\00", align 1
@H2O_CACHE_DIGESTS_STATE_NOT_CACHED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"AcA; reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decode() #0 {
  %1 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %1, align 8
  %2 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @h2o_cache_digests_load_header(%struct.TYPE_19__** %1, i32 %2)
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %5 = icmp ne %struct.TYPE_19__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6)
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %9 = icmp eq %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %198

11:                                               ; preds = %0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 7
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 11
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %74 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i64 @h2o_cache_digests_lookup_by_url(%struct.TYPE_19__* %73, i32 %74)
  %76 = load i64, i64* @H2O_CACHE_DIGESTS_STATE_FRESH, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %81 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i64 @h2o_cache_digests_lookup_by_url(%struct.TYPE_19__* %80, i32 %81)
  %83 = load i64, i64* @H2O_CACHE_DIGESTS_STATE_UNKNOWN, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @h2o_cache_digests_load_header(%struct.TYPE_19__** %1, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @ok(i32 %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 7
  %114 = zext i1 %113 to i32
  %115 = call i32 @ok(i32 %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ok(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %134 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %135 = call i64 @h2o_cache_digests_lookup_by_url(%struct.TYPE_19__* %133, i32 %134)
  %136 = load i64, i64* @H2O_CACHE_DIGESTS_STATE_NOT_CACHED, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %141 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %142 = call i64 @h2o_cache_digests_lookup_by_url(%struct.TYPE_19__* %140, i32 %141)
  %143 = load i64, i64* @H2O_CACHE_DIGESTS_STATE_FRESH, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ok(i32 %145)
  %147 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %148 = call i32 @h2o_cache_digests_load_header(%struct.TYPE_19__** %1, i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 7
  %174 = zext i1 %173 to i32
  %175 = call i32 @ok(i32 %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @ok(i32 %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 @ok(i32 %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1, align 8
  %197 = call i32 @h2o_cache_digests_destroy(%struct.TYPE_19__* %196)
  br label %198

198:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @h2o_cache_digests_load_header(%struct.TYPE_19__**, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @h2o_cache_digests_lookup_by_url(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @h2o_cache_digests_destroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
