; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_stripws.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_stripws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"   hello world\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"hello world   \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"   hello world   \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_stripws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stripws() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @h2o_str_stripws(i32 %8)
  %10 = bitcast %struct.TYPE_3__* %2 to i64*
  store i64 %9, i64* %10, align 4
  %11 = bitcast %struct.TYPE_3__* %1 to i8*
  %12 = bitcast %struct.TYPE_3__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @h2o_memis(i32 %14, i32 %16, i32 %17)
  %19 = call i32 @ok(i32 %18)
  %20 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 @h2o_str_stripws(i32 %20)
  %22 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %21, i64* %22, align 4
  %23 = bitcast %struct.TYPE_3__* %1 to i8*
  %24 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @h2o_memis(i32 %26, i32 %28, i32 %29)
  %31 = call i32 @ok(i32 %30)
  %32 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i64 @h2o_str_stripws(i32 %32)
  %34 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %33, i64* %34, align 4
  %35 = bitcast %struct.TYPE_3__* %1 to i8*
  %36 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @h2o_memis(i32 %38, i32 %40, i32 %41)
  %43 = call i32 @ok(i32 %42)
  %44 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i64 @h2o_str_stripws(i32 %44)
  %46 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_3__* %1 to i8*
  %48 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @h2o_memis(i32 %50, i32 %52, i32 %53)
  %55 = call i32 @ok(i32 %54)
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i64 @h2o_str_stripws(i32 %56)
  %58 = bitcast %struct.TYPE_3__* %6 to i64*
  store i64 %57, i64* %58, align 4
  %59 = bitcast %struct.TYPE_3__* %1 to i8*
  %60 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @h2o_memis(i32 %62, i32 %64, i32 %65)
  %67 = call i32 @ok(i32 %66)
  %68 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i64 @h2o_str_stripws(i32 %68)
  %70 = bitcast %struct.TYPE_3__* %7 to i64*
  store i64 %69, i64* %70, align 4
  %71 = bitcast %struct.TYPE_3__* %1 to i8*
  %72 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 @h2o_memis(i32 %74, i32 %76, i32 %77)
  %79 = call i32 @ok(i32 %78)
  ret void
}

declare dso_local i64 @h2o_str_stripws(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
