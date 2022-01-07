; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_url.c_test_hostport.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_url.c_test_hostport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"127.0.0.1/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"127.0.0.1:8081/\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"[::ffff:192.0.2.1]:8081/\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"::ffff:192.0.2.1\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"[::ffff:192.0.2.1:8081/\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c":8081/\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"[]:8081/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hostport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hostport() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = call { i8*, i32 } @h2o_iovec_init(i32 %12)
  %14 = bitcast %struct.TYPE_4__* %5 to { i8*, i32 }*
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i8*, i32 } %13, 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i8*, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.TYPE_4__* %1 to i8*
  %20 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @h2o_url_parse_hostport(i8* %22, i32 %24, %struct.TYPE_4__* %2, i32* %3)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = icmp eq i8* %26, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @h2o_memis(i8* %37, i32 %39, i32 %40)
  %42 = call i32 @ok(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 65535
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = call { i8*, i32 } @h2o_iovec_init(i32 %47)
  %49 = bitcast %struct.TYPE_4__* %6 to { i8*, i32 }*
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %49, i32 0, i32 0
  %51 = extractvalue { i8*, i32 } %48, 0
  store i8* %51, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %49, i32 0, i32 1
  %53 = extractvalue { i8*, i32 } %48, 1
  store i32 %53, i32* %52, align 8
  %54 = bitcast %struct.TYPE_4__* %1 to i8*
  %55 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @h2o_url_parse_hostport(i8* %57, i32 %59, %struct.TYPE_4__* %2, i32* %3)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @h2o_memis(i8* %67, i32 %69, i32 %70)
  %72 = call i32 @ok(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 65535
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75)
  %77 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %78 = call { i8*, i32 } @h2o_iovec_init(i32 %77)
  %79 = bitcast %struct.TYPE_4__* %7 to { i8*, i32 }*
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 0
  %81 = extractvalue { i8*, i32 } %78, 0
  store i8* %81, i8** %80, align 8
  %82 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 1
  %83 = extractvalue { i8*, i32 } %78, 1
  store i32 %83, i32* %82, align 8
  %84 = bitcast %struct.TYPE_4__* %1 to i8*
  %85 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @h2o_url_parse_hostport(i8* %87, i32 %89, %struct.TYPE_4__* %2, i32* %3)
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %101 = call i32 @h2o_memis(i8* %97, i32 %99, i32 %100)
  %102 = call i32 @ok(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 8081
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %108 = call { i8*, i32 } @h2o_iovec_init(i32 %107)
  %109 = bitcast %struct.TYPE_4__* %8 to { i8*, i32 }*
  %110 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %109, i32 0, i32 0
  %111 = extractvalue { i8*, i32 } %108, 0
  store i8* %111, i8** %110, align 8
  %112 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %109, i32 0, i32 1
  %113 = extractvalue { i8*, i32 } %108, 1
  store i32 %113, i32* %112, align 8
  %114 = bitcast %struct.TYPE_4__* %1 to i8*
  %115 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @h2o_url_parse_hostport(i8* %117, i32 %119, %struct.TYPE_4__* %2, i32* %3)
  store i8* %120, i8** %4, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @ok(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 @h2o_memis(i8* %127, i32 %129, i32 %130)
  %132 = call i32 @ok(i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 8081
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %138 = call { i8*, i32 } @h2o_iovec_init(i32 %137)
  %139 = bitcast %struct.TYPE_4__* %9 to { i8*, i32 }*
  %140 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %139, i32 0, i32 0
  %141 = extractvalue { i8*, i32 } %138, 0
  store i8* %141, i8** %140, align 8
  %142 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %139, i32 0, i32 1
  %143 = extractvalue { i8*, i32 } %138, 1
  store i32 %143, i32* %142, align 8
  %144 = bitcast %struct.TYPE_4__* %1 to i8*
  %145 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 16, i1 false)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @h2o_url_parse_hostport(i8* %147, i32 %149, %struct.TYPE_4__* %2, i32* %3)
  store i8* %150, i8** %4, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = icmp eq i8* %151, null
  %153 = zext i1 %152 to i32
  %154 = call i32 @ok(i32 %153)
  %155 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %156 = call { i8*, i32 } @h2o_iovec_init(i32 %155)
  %157 = bitcast %struct.TYPE_4__* %10 to { i8*, i32 }*
  %158 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %157, i32 0, i32 0
  %159 = extractvalue { i8*, i32 } %156, 0
  store i8* %159, i8** %158, align 8
  %160 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %157, i32 0, i32 1
  %161 = extractvalue { i8*, i32 } %156, 1
  store i32 %161, i32* %160, align 8
  %162 = bitcast %struct.TYPE_4__* %1 to i8*
  %163 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 16, i1 false)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @h2o_url_parse_hostport(i8* %165, i32 %167, %struct.TYPE_4__* %2, i32* %3)
  store i8* %168, i8** %4, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = icmp eq i8* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 @ok(i32 %171)
  %173 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %174 = call { i8*, i32 } @h2o_iovec_init(i32 %173)
  %175 = bitcast %struct.TYPE_4__* %11 to { i8*, i32 }*
  %176 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %175, i32 0, i32 0
  %177 = extractvalue { i8*, i32 } %174, 0
  store i8* %177, i8** %176, align 8
  %178 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %175, i32 0, i32 1
  %179 = extractvalue { i8*, i32 } %174, 1
  store i32 %179, i32* %178, align 8
  %180 = bitcast %struct.TYPE_4__* %1 to i8*
  %181 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 16, i1 false)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @h2o_url_parse_hostport(i8* %183, i32 %185, %struct.TYPE_4__* %2, i32* %3)
  store i8* %186, i8** %4, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = icmp eq i8* %187, null
  %189 = zext i1 %188 to i32
  %190 = call i32 @ok(i32 %189)
  ret void
}

declare dso_local { i8*, i32 } @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @h2o_url_parse_hostport(i8*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
