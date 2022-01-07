; ModuleID = '/home/carl/AnghaBench/git/extr_tmp-objdir.c_migrate_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_tmp-objdir.c_migrate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.strbuf*)* @migrate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_one(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @stat(i32 %9, %struct.stat* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mkdir(i32 %21, i32 511)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @adjust_shared_perm(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %50

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %18
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EEXIST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %50

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %41 = call i32 @migrate_paths(%struct.strbuf* %39, %struct.strbuf* %40)
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %13
  %43 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @finalize_object_file(i32 %45, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %38, %36, %30, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mkdir(i32, i32) #1

declare dso_local i64 @adjust_shared_perm(i32) #1

declare dso_local i32 @migrate_paths(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @finalize_object_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
