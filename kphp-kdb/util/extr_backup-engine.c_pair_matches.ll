; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_pair_matches.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_pair_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64, i64, i32, i32, i32 }

@BSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.file_info*)* @pair_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pair_matches(%struct.file_info* %0, %struct.file_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.file_info* %1, %struct.file_info** %5, align 8
  %9 = load %struct.file_info*, %struct.file_info** %4, align 8
  %10 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.file_info*, %struct.file_info** %5, align 8
  %14 = getelementptr inbounds %struct.file_info, %struct.file_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strlen(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 11
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %2
  %22 = load %struct.file_info*, %struct.file_info** %4, align 8
  %23 = getelementptr inbounds %struct.file_info, %struct.file_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.file_info*, %struct.file_info** %5, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @memcmp(i32 %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load %struct.file_info*, %struct.file_info** %4, align 8
  %33 = getelementptr inbounds %struct.file_info, %struct.file_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.file_info*, %struct.file_info** %5, align 8
  %36 = getelementptr inbounds %struct.file_info, %struct.file_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %21, %2
  store i32 0, i32* %3, align 4
  br label %90

40:                                               ; preds = %31
  %41 = load %struct.file_info*, %struct.file_info** %4, align 8
  %42 = getelementptr inbounds %struct.file_info, %struct.file_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.file_info*, %struct.file_info** %5, align 8
  %45 = getelementptr inbounds %struct.file_info, %struct.file_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %90

49:                                               ; preds = %40
  %50 = load %struct.file_info*, %struct.file_info** %4, align 8
  %51 = getelementptr inbounds %struct.file_info, %struct.file_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.file_info*, %struct.file_info** %5, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @BSIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i64 @lseek(i32 %52, i64 %58, i32 %59)
  %61 = load %struct.file_info*, %struct.file_info** %5, align 8
  %62 = getelementptr inbounds %struct.file_info, %struct.file_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @BSIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = icmp eq i64 %60, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.file_info*, %struct.file_info** %4, align 8
  %71 = getelementptr inbounds %struct.file_info, %struct.file_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @Buffer, align 4
  %74 = load i32, i32* @BSIZE, align 4
  %75 = call i32 @read(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BSIZE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %90

80:                                               ; preds = %49
  %81 = load i32, i32* @Buffer, align 4
  %82 = load %struct.file_info*, %struct.file_info** %5, align 8
  %83 = getelementptr inbounds %struct.file_info, %struct.file_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BSIZE, align 4
  %86 = call i64 @memcmp(i32 %81, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %79, %48, %39
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
