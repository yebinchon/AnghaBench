; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%6lu cycles/operation, %4lu cycles/byte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32, i8*)* @test_ahash_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ahash_cycles(%struct.ahash_request* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @test_ahash_cycles_digest(%struct.ahash_request* %20, i32 %21, i8* %22)
  store i32 %23, i32* %5, align 4
  br label %130

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %30 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %31 = call i32 @crypto_ahash_init(%struct.ahash_request* %30)
  %32 = call i32 @do_one_ahash_op(%struct.ahash_request* %29, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %116

36:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %43 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %44 = call i32 @crypto_ahash_update(%struct.ahash_request* %43)
  %45 = call i32 @do_one_ahash_op(%struct.ahash_request* %42, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %116

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %56 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %57 = call i32 @crypto_ahash_final(%struct.ahash_request* %56)
  %58 = call i32 @do_one_ahash_op(%struct.ahash_request* %55, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %116

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %112, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %115

70:                                               ; preds = %67
  %71 = call i64 (...) @get_cycles()
  store i64 %71, i64* %14, align 8
  %72 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %73 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %74 = call i32 @crypto_ahash_init(%struct.ahash_request* %73)
  %75 = call i32 @do_one_ahash_op(%struct.ahash_request* %72, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %116

79:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %86 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %87 = call i32 @crypto_ahash_update(%struct.ahash_request* %86)
  %88 = call i32 @do_one_ahash_op(%struct.ahash_request* %85, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %116

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %80

97:                                               ; preds = %80
  %98 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %99 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %100 = call i32 @crypto_ahash_final(%struct.ahash_request* %99)
  %101 = call i32 @do_one_ahash_op(%struct.ahash_request* %98, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %116

105:                                              ; preds = %97
  %106 = call i64 (...) @get_cycles()
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %14, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %67

115:                                              ; preds = %67
  br label %116

116:                                              ; preds = %115, %104, %91, %78, %61, %48, %35
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %5, align 4
  br label %130

121:                                              ; preds = %116
  %122 = load i64, i64* %10, align 8
  %123 = udiv i64 %122, 8
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 8, %125
  %127 = sext i32 %126 to i64
  %128 = udiv i64 %124, %127
  %129 = call i32 @pr_cont(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %123, i64 %128)
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %121, %119, %19
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @test_ahash_cycles_digest(%struct.ahash_request*, i32, i8*) #1

declare dso_local i32 @do_one_ahash_op(%struct.ahash_request*, i32) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_final(%struct.ahash_request*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @pr_cont(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
