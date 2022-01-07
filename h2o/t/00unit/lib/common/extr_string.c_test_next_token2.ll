; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token2.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [39 x i8] c"public, max-age=86400, must-revalidate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"max-age\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"86400\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"must-revalidate\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"public, max-age = 86400 = c , must-revalidate=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"86400 = c\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_next_token2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next_token2() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = call { i8*, i64 } @h2o_iovec_init(i32 %7)
  %9 = bitcast %struct.TYPE_5__* %5 to { i8*, i64 }*
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %9, i32 0, i32 0
  %11 = extractvalue { i8*, i64 } %8, 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %9, i32 0, i32 1
  %13 = extractvalue { i8*, i64 } %8, 1
  store i64 %13, i64* %12, align 8
  %14 = bitcast %struct.TYPE_5__* %1 to i8*
  %15 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %16, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @ok(i32 0)
  br label %142

20:                                               ; preds = %0
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @h2o_memis(i8* %21, i64 %22, i32 %23)
  %25 = call i32 @ok(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %36, i8** %3, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = call i32 @ok(i32 0)
  br label %142

40:                                               ; preds = %20
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @h2o_memis(i8* %41, i64 %42, i32 %43)
  %45 = call i32 @ok(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @h2o_memis(i8* %47, i64 %49, i32 %50)
  %52 = call i32 @ok(i32 %51)
  %53 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %53, i8** %3, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = call i32 @ok(i32 0)
  br label %142

57:                                               ; preds = %40
  %58 = load i8*, i8** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @h2o_memis(i8* %58, i64 %59, i32 %60)
  %62 = call i32 @ok(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %73, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp eq i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76)
  %78 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %79 = call { i8*, i64 } @h2o_iovec_init(i32 %78)
  %80 = bitcast %struct.TYPE_5__* %6 to { i8*, i64 }*
  %81 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i8*, i64 } %79, 0
  store i8* %82, i8** %81, align 8
  %83 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i8*, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.TYPE_5__* %1 to i8*
  %86 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %87, i8** %3, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %57
  %90 = call i32 @ok(i32 0)
  br label %142

91:                                               ; preds = %57
  %92 = load i8*, i8** %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32 @h2o_memis(i8* %92, i64 %93, i32 %94)
  %96 = call i32 @ok(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %107, i8** %3, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %91
  %110 = call i32 @ok(i32 0)
  br label %142

111:                                              ; preds = %91
  %112 = load i8*, i8** %3, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %115 = call i32 @h2o_memis(i8* %112, i64 %113, i32 %114)
  %116 = call i32 @ok(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 @h2o_memis(i8* %118, i64 %120, i32 %121)
  %123 = call i32 @ok(i32 %122)
  %124 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %124, i8** %3, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = call i32 @ok(i32 0)
  br label %142

128:                                              ; preds = %111
  %129 = load i8*, i8** %3, align 8
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %132 = call i32 @h2o_memis(i8* %129, i64 %130, i32 %131)
  %133 = call i32 @ok(i32 %132)
  %134 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %134, i8** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %140 = call i32 @h2o_memis(i8* %136, i64 %138, i32 %139)
  %141 = call i32 @ok(i32 %140)
  br label %142

142:                                              ; preds = %128, %126, %109, %89, %55, %38, %18
  ret void
}

declare dso_local { i8*, i64 } @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @h2o_next_token(%struct.TYPE_5__*, i8 signext, i64*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
