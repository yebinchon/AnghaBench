; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/maccalc/src/extr_main.c_maccalc_do_logical.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/maccalc/src/extr_main.c_maccalc_do_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_ADDRESS_LEN = common dso_local global i32 0, align 4
@ERR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8 (i8, i8)*)* @maccalc_do_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maccalc_do_logical(i32 %0, i8** %1, i8 (i8, i8)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8 (i8, i8)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8 (i8, i8)* %2, i8 (i8, i8)** %7, align 8
  %14 = load i32, i32* @MAC_ADDRESS_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @MAC_ADDRESS_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 (...) @usage()
  %25 = load i32, i32* @ERR_INVALID, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @parse_mac(i8* %29, i8* %17)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %68

35:                                               ; preds = %26
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @parse_mac(i8* %38, i8* %20)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %68

44:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @MAC_ADDRESS_LEN, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i8 (i8, i8)*, i8 (i8, i8)** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %17, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %20, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call zeroext i8 %50(i8 zeroext %54, i8 zeroext %58)
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %17, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %45

66:                                               ; preds = %45
  %67 = call i32 @print_mac(i8* %17)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %42, %33, %23
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @parse_mac(i8*, i8*) #2

declare dso_local i32 @print_mac(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
