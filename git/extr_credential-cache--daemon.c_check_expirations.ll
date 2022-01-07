; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_check_expirations.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_check_expirations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@check_expirations.wait_for_entry_until = internal global i64 0, align 8
@TIME_MAX = common dso_local global i64 0, align 8
@entries_nr = common dso_local global i32 0, align 4
@entries = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @check_expirations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_expirations() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = call i64 @time(i32* null)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @TIME_MAX, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @check_expirations.wait_for_entry_until, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %10, 30
  store i64 %11, i64* @check_expirations.wait_for_entry_until, align 8
  br label %12

12:                                               ; preds = %9, %0
  br label %13

13:                                               ; preds = %70, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @entries_nr, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %17
  %27 = load i32, i32* @entries_nr, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @entries_nr, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @credential_clear(i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @entries_nr, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %44 = load i32, i32* @entries_nr, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = call i32 @memcpy(%struct.TYPE_4__* %42, %struct.TYPE_4__* %46, i32 16)
  br label %48

48:                                               ; preds = %38, %26
  %49 = load i64, i64* %3, align 8
  %50 = add nsw i64 %49, 30
  store i64 %50, i64* @check_expirations.wait_for_entry_until, align 8
  br label %70

51:                                               ; preds = %17
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entries, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %48
  br label %13

71:                                               ; preds = %13
  %72 = load i32, i32* @entries_nr, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @check_expirations.wait_for_entry_until, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* %1, align 8
  br label %85

79:                                               ; preds = %74
  %80 = load i64, i64* @check_expirations.wait_for_entry_until, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %3, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %1, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i64, i64* %1, align 8
  ret i64 %86
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @credential_clear(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
