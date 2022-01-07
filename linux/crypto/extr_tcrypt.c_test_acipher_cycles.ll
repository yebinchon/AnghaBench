; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_acipher_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_acipher_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"1 operation in %lu cycles (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32, i32)* @test_acipher_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_acipher_cycles(%struct.skcipher_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %21 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %20)
  %22 = call i32 @do_one_acipher_op(%struct.skcipher_request* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %26 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %25)
  %27 = call i32 @do_one_acipher_op(%struct.skcipher_request* %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %69

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = call i64 (...) @get_cycles()
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %46 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %47 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %46)
  %48 = call i32 @do_one_acipher_op(%struct.skcipher_request* %45, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %51 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %52 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %51)
  %53 = call i32 @do_one_acipher_op(%struct.skcipher_request* %50, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = call i64 (...) @get_cycles()
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %69

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %58, %31
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 4
  %75 = udiv i64 %74, 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pr_cont(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @do_one_acipher_op(%struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @pr_cont(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
