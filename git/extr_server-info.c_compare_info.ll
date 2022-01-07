; ModuleID = '/home/carl/AnghaBench/git/extr_server-info.c_compare_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_server-info.c_compare_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_info(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pack_info**, align 8
  %7 = alloca %struct.pack_info**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pack_info**
  store %struct.pack_info** %9, %struct.pack_info*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pack_info**
  store %struct.pack_info** %11, %struct.pack_info*** %7, align 8
  %12 = load %struct.pack_info**, %struct.pack_info*** %6, align 8
  %13 = load %struct.pack_info*, %struct.pack_info** %12, align 8
  %14 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 0, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.pack_info**, %struct.pack_info*** %7, align 8
  %19 = load %struct.pack_info*, %struct.pack_info** %18, align 8
  %20 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 0, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.pack_info**, %struct.pack_info*** %6, align 8
  %25 = load %struct.pack_info*, %struct.pack_info** %24, align 8
  %26 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pack_info**, %struct.pack_info*** %7, align 8
  %29 = load %struct.pack_info*, %struct.pack_info** %28, align 8
  %30 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %73

34:                                               ; preds = %17, %2
  %35 = load %struct.pack_info**, %struct.pack_info*** %6, align 8
  %36 = load %struct.pack_info*, %struct.pack_info** %35, align 8
  %37 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 0, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %73

41:                                               ; preds = %34
  %42 = load %struct.pack_info**, %struct.pack_info*** %7, align 8
  %43 = load %struct.pack_info*, %struct.pack_info** %42, align 8
  %44 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 0, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %73

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pack_info**, %struct.pack_info*** %6, align 8
  %52 = load %struct.pack_info*, %struct.pack_info** %51, align 8
  %53 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pack_info**, %struct.pack_info*** %7, align 8
  %56 = load %struct.pack_info*, %struct.pack_info** %55, align 8
  %57 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %73

61:                                               ; preds = %50
  %62 = load %struct.pack_info**, %struct.pack_info*** %6, align 8
  %63 = load %struct.pack_info*, %struct.pack_info** %62, align 8
  %64 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pack_info**, %struct.pack_info*** %7, align 8
  %67 = load %struct.pack_info*, %struct.pack_info** %66, align 8
  %68 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %73

72:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %60, %47, %40, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
