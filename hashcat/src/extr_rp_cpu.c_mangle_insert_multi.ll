; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_rp_cpu.c_mangle_insert_multi.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_rp_cpu.c_mangle_insert_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RP_PASSWORD_SIZE = common dso_local global i32 0, align 4
@RULE_RC_REJECT_ERROR = common dso_local global i32 0, align 4
@RULE_RC_SYNTAX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i32, i32, i32)* @mangle_insert_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mangle_insert_multi(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %15, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @RP_PASSWORD_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @RULE_RC_REJECT_ERROR, align 4
  store i32 %26, i32* %8, align 4
  br label %88

27:                                               ; preds = %7
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @RULE_RC_REJECT_ERROR, align 4
  store i32 %32, i32* %8, align 4
  br label %88

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @RULE_RC_REJECT_ERROR, align 4
  store i32 %38, i32* %8, align 4
  br label %88

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @RULE_RC_REJECT_ERROR, align 4
  store i32 %46, i32* %8, align 4
  br label %88

47:                                               ; preds = %39
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @RULE_RC_SYNTAX_ERROR, align 4
  store i32 %51, i32* %8, align 4
  br label %88

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @memmove(i8* %53, i8* %57, i32 %60)
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @memcpy(i8* %65, i8* %69, i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @memcpy(i8* %77, i8* %78, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %52, %50, %45, %37, %31, %25
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
