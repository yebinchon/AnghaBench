; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_sort_ambiguous.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_sort_ambiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @sort_ambiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_ambiguous(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.repository*
  store %struct.repository* %14, %struct.repository** %8, align 8
  %15 = load %struct.repository*, %struct.repository** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @oid_object_info(%struct.repository* %15, i8* %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.repository*, %struct.repository** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @oid_object_info(%struct.repository* %18, i8* %19, i32* null)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @oidcmp(i8* %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = srem i32 %29, 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = srem i32 %31, 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 -1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @oid_object_info(%struct.repository*, i8*, i32*) #1

declare dso_local i32 @oidcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
