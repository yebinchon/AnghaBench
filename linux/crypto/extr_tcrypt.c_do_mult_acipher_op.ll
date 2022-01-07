; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_do_mult_acipher_op.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_do_mult_acipher_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mb_skcipher_data = type { i32, i32 }

@ENCRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"concurrent request %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_mb_skcipher_data*, i32, i32, i32*)* @do_mult_acipher_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mult_acipher_op(%struct.test_mb_skcipher_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.test_mb_skcipher_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.test_mb_skcipher_data* %0, %struct.test_mb_skcipher_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %44, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ENCRYPT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.test_mb_skcipher_data*, %struct.test_mb_skcipher_data** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @crypto_skcipher_encrypt(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %43

31:                                               ; preds = %15
  %32 = load %struct.test_mb_skcipher_data*, %struct.test_mb_skcipher_data** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crypto_skcipher_decrypt(i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %31, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %11

47:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %88, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.test_mb_skcipher_data*, %struct.test_mb_skcipher_data** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %58, i64 %60
  %62 = getelementptr inbounds %struct.test_mb_skcipher_data, %struct.test_mb_skcipher_data* %61, i32 0, i32 0
  %63 = call i32 @crypto_wait_req(i32 %57, i32* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %52
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %74, %52
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %48

91:                                               ; preds = %48
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
