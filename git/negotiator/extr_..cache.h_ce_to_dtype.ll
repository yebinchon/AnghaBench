; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_..cache.h_ce_to_dtype.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_..cache.h_ce_to_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@DT_REG = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*)* @ce_to_dtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_to_dtype(%struct.cache_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  %5 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %6 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ntohl(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @S_ISREG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @DT_REG, align 4
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @S_ISGITLINK(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @DT_DIR, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @S_ISLNK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @DT_LNK, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %22, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
