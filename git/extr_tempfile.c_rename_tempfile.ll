; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_rename_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_rename_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"rename_tempfile called for inactive object\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_tempfile(%struct.tempfile** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tempfile**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tempfile*, align 8
  %7 = alloca i32, align 4
  store %struct.tempfile** %0, %struct.tempfile*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.tempfile**, %struct.tempfile*** %4, align 8
  %9 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  store %struct.tempfile* %9, %struct.tempfile** %6, align 8
  %10 = load %struct.tempfile*, %struct.tempfile** %6, align 8
  %11 = call i32 @is_tempfile_active(%struct.tempfile* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.tempfile*, %struct.tempfile** %6, align 8
  %17 = call i64 @close_tempfile_gently(%struct.tempfile* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.tempfile**, %struct.tempfile*** %4, align 8
  %21 = call i32 @delete_tempfile(%struct.tempfile** %20)
  store i32 -1, i32* %3, align 4
  br label %39

22:                                               ; preds = %15
  %23 = load %struct.tempfile*, %struct.tempfile** %6, align 8
  %24 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @rename(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.tempfile**, %struct.tempfile*** %4, align 8
  %33 = call i32 @delete_tempfile(%struct.tempfile** %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %39

35:                                               ; preds = %22
  %36 = load %struct.tempfile*, %struct.tempfile** %6, align 8
  %37 = call i32 @deactivate_tempfile(%struct.tempfile* %36)
  %38 = load %struct.tempfile**, %struct.tempfile*** %4, align 8
  store %struct.tempfile* null, %struct.tempfile** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @close_tempfile_gently(%struct.tempfile*) #1

declare dso_local i32 @delete_tempfile(%struct.tempfile**) #1

declare dso_local i64 @rename(i32, i8*) #1

declare dso_local i32 @deactivate_tempfile(%struct.tempfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
