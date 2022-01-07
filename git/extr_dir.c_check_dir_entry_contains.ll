; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_check_dir_entry_contains.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_check_dir_entry_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_entry = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_dir_entry_contains(%struct.dir_entry* %0, %struct.dir_entry* %1) #0 {
  %3 = alloca %struct.dir_entry*, align 8
  %4 = alloca %struct.dir_entry*, align 8
  store %struct.dir_entry* %0, %struct.dir_entry** %3, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %4, align 8
  %5 = load %struct.dir_entry*, %struct.dir_entry** %3, align 8
  %6 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.dir_entry*, %struct.dir_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.dir_entry*, %struct.dir_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.dir_entry*, %struct.dir_entry** %3, align 8
  %17 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %38

25:                                               ; preds = %12
  %26 = load %struct.dir_entry*, %struct.dir_entry** %3, align 8
  %27 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.dir_entry*, %struct.dir_entry** %4, align 8
  %30 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dir_entry*, %struct.dir_entry** %3, align 8
  %33 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memcmp(i8* %28, i8* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %25, %12, %2
  %39 = phi i1 [ false, %12 ], [ false, %2 ], [ %37, %25 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
