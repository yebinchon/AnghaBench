; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_setup_traverse_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_setup_traverse_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i64, i8*, i64, %struct.traverse_info* }

@setup_traverse_info.dummy = internal global %struct.traverse_info zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_traverse_info(%struct.traverse_info* %0, i8* %1) #0 {
  %3 = alloca %struct.traverse_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %9 = call i32 @memset(%struct.traverse_info* %8, i32 0, i32 32)
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %12, %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i64 [ %28, %26 ], [ 0, %29 ]
  %32 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %33 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %36 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %39 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.traverse_info*, %struct.traverse_info** %3, align 8
  %44 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %43, i32 0, i32 3
  store %struct.traverse_info* @setup_traverse_info.dummy, %struct.traverse_info** %44, align 8
  br label %45

45:                                               ; preds = %42, %30
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.traverse_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
