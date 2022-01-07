; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_modify_fac_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_modify_fac_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @modify_fac_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_fac_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %7

7:                                                ; preds = %64, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 33
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @simple_strtoull(i8* %20, i8** %5, i32 0)
  store i64 %21, i64* %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %67

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %2, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @simple_strtoull(i8* %35, i8** %5, i32 0)
  store i64 %36, i64* %4, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %67

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %47, %41
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @modify_facility(i64 %48, i32 %49)
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %43

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %26
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @modify_facility(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i8*, i8** %2, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 44
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %2, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %2, align 8
  br label %7

67:                                               ; preds = %63, %40, %25, %7
  %68 = call i32 (...) @check_cleared_facilities()
  ret void
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @modify_facility(i64, i32) #1

declare dso_local i32 @check_cleared_facilities(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
