; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_check_nonfinal_ahash_op.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_check_nonfinal_ahash_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testvec_config = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"alg: ahash: %s %s() failed with err %d on test vector %s, cfg=\22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"alg: ahash: %s %s() used result buffer on test vector %s, cfg=\22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32, i8*, i8*, %struct.testvec_config*)* @check_nonfinal_ahash_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_nonfinal_ahash_op(i8* %0, i32 %1, i32* %2, i32 %3, i8* %4, i8* %5, %struct.testvec_config* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.testvec_config*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.testvec_config* %6, %struct.testvec_config** %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = load i8*, i8** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %14, align 8
  %23 = load %struct.testvec_config*, %struct.testvec_config** %15, align 8
  %24 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i32 %21, i8* %22, i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %8, align 4
  br label %44

28:                                               ; preds = %7
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @testmgr_is_poison(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.testvec_config*, %struct.testvec_config** %15, align 8
  %38 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35, i8* %36, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %33, %18
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @pr_err(i8*, i8*, i8*, ...) #1

declare dso_local i32 @testmgr_is_poison(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
