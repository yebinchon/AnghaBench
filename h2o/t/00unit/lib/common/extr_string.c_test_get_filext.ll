; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_get_filext.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_get_filext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/abc.txt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/abc.txt.gz\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"/abc.\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"/abc\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/abc.def/abc\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/abc.def/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_filext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_filext() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = call { i32*, i32 } @h2o_get_filext(i32 %8)
  %10 = bitcast %struct.TYPE_3__* %2 to { i32*, i32 }*
  %11 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { i32*, i32 } %9, 0
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { i32*, i32 } %9, 1
  store i32 %14, i32* %13, align 8
  %15 = bitcast %struct.TYPE_3__* %1 to i8*
  %16 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @h2o_memis(i32* %18, i32 %20, i32 %21)
  %23 = call i32 @ok(i32 %22)
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = call { i32*, i32 } @h2o_get_filext(i32 %24)
  %26 = bitcast %struct.TYPE_3__* %3 to { i32*, i32 }*
  %27 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i32*, i32 } %25, 0
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i32*, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = bitcast %struct.TYPE_3__* %1 to i8*
  %32 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 @h2o_memis(i32* %34, i32 %36, i32 %37)
  %39 = call i32 @ok(i32 %38)
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %41 = call { i32*, i32 } @h2o_get_filext(i32 %40)
  %42 = bitcast %struct.TYPE_3__* %4 to { i32*, i32 }*
  %43 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %42, i32 0, i32 0
  %44 = extractvalue { i32*, i32 } %41, 0
  store i32* %44, i32** %43, align 8
  %45 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %42, i32 0, i32 1
  %46 = extractvalue { i32*, i32 } %41, 1
  store i32 %46, i32* %45, align 8
  %47 = bitcast %struct.TYPE_3__* %1 to i8*
  %48 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @h2o_memis(i32* %50, i32 %52, i32 %53)
  %55 = call i32 @ok(i32 %54)
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %57 = call { i32*, i32 } @h2o_get_filext(i32 %56)
  %58 = bitcast %struct.TYPE_3__* %5 to { i32*, i32 }*
  %59 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { i32*, i32 } %57, 0
  store i32* %60, i32** %59, align 8
  %61 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { i32*, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  %63 = bitcast %struct.TYPE_3__* %1 to i8*
  %64 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  %70 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %71 = call { i32*, i32 } @h2o_get_filext(i32 %70)
  %72 = bitcast %struct.TYPE_3__* %6 to { i32*, i32 }*
  %73 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %72, i32 0, i32 0
  %74 = extractvalue { i32*, i32 } %71, 0
  store i32* %74, i32** %73, align 8
  %75 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %72, i32 0, i32 1
  %76 = extractvalue { i32*, i32 } %71, 1
  store i32 %76, i32* %75, align 8
  %77 = bitcast %struct.TYPE_3__* %1 to i8*
  %78 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82)
  %84 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %85 = call { i32*, i32 } @h2o_get_filext(i32 %84)
  %86 = bitcast %struct.TYPE_3__* %7 to { i32*, i32 }*
  %87 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %86, i32 0, i32 0
  %88 = extractvalue { i32*, i32 } %85, 0
  store i32* %88, i32** %87, align 8
  %89 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %86, i32 0, i32 1
  %90 = extractvalue { i32*, i32 } %85, 1
  store i32 %90, i32* %89, align 8
  %91 = bitcast %struct.TYPE_3__* %1 to i8*
  %92 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96)
  ret void
}

declare dso_local { i32*, i32 } @h2o_get_filext(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
