; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"public, max-age=86400, must-revalidate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"max-age=86400\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"must-revalidate\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  public  ,max-age=86400  ,\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c", ,a, \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next_token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @h2o_iovec_init(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %6, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @ok(i32 0)
  br label %110

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @h2o_memis(i8* %11, i64 %12, i32 %13)
  %15 = call i32 @ok(i32 %14)
  %16 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %16, i8** %2, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @ok(i32 0)
  br label %110

20:                                               ; preds = %10
  %21 = load i8*, i8** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @h2o_memis(i8* %21, i64 %22, i32 %23)
  %25 = call i32 @ok(i32 %24)
  %26 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %26, i8** %2, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @ok(i32 0)
  br label %110

30:                                               ; preds = %20
  %31 = load i8*, i8** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @h2o_memis(i8* %31, i64 %32, i32 %33)
  %35 = call i32 @ok(i32 %34)
  %36 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp eq i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39)
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @h2o_iovec_init(i32 %41)
  store i32 %42, i32* %1, align 4
  %43 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %43, i8** %2, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 @ok(i32 0)
  br label %110

47:                                               ; preds = %30
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @h2o_memis(i8* %48, i64 %49, i32 %50)
  %52 = call i32 @ok(i32 %51)
  %53 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %53, i8** %2, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @ok(i32 0)
  br label %110

57:                                               ; preds = %47
  %58 = load i8*, i8** %2, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @h2o_memis(i8* %58, i64 %59, i32 %60)
  %62 = call i32 @ok(i32 %61)
  %63 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %63, i8** %2, align 8
  %64 = load i8*, i8** %2, align 8
  %65 = icmp eq i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 @h2o_iovec_init(i32 %68)
  store i32 %69, i32* %1, align 4
  %70 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %70, i8** %2, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = icmp eq i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  %75 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %76 = call i32 @h2o_iovec_init(i32 %75)
  store i32 %76, i32* %1, align 4
  %77 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %77, i8** %2, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = call i32 @ok(i32 0)
  br label %110

81:                                               ; preds = %57
  %82 = load i64, i64* %3, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %86, i8** %2, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @ok(i32 0)
  br label %110

90:                                               ; preds = %81
  %91 = load i64, i64* %3, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ok(i32 %93)
  %95 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %95, i8** %2, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @ok(i32 0)
  br label %110

99:                                               ; preds = %90
  %100 = load i8*, i8** %2, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 @h2o_memis(i8* %100, i64 %101, i32 %102)
  %104 = call i32 @ok(i32 %103)
  %105 = call i8* @h2o_next_token(i32* %1, i8 signext 44, i64* %3, i32* null)
  store i8* %105, i8** %2, align 8
  %106 = load i8*, i8** %2, align 8
  %107 = icmp eq i8* %106, null
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108)
  br label %110

110:                                              ; preds = %99, %97, %88, %79, %55, %45, %28, %18, %8
  ret void
}

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i8* @h2o_next_token(i32*, i8 signext, i64*, i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
