; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_match_explicit_lhs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_match_explicit_lhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.refspec_item = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"src refspec %s does not match any\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"src refspec %s matches more than one\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.refspec_item*, %struct.ref**, i32*)* @match_explicit_lhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_explicit_lhs(%struct.ref* %0, %struct.refspec_item* %1, %struct.ref** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.refspec_item*, align 8
  %8 = alloca %struct.ref**, align 8
  %9 = alloca i32*, align 8
  store %struct.ref* %0, %struct.ref** %6, align 8
  store %struct.refspec_item* %1, %struct.refspec_item** %7, align 8
  store %struct.ref** %2, %struct.ref*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.refspec_item*, %struct.refspec_item** %7, align 8
  %11 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ref*, %struct.ref** %6, align 8
  %14 = load %struct.ref**, %struct.ref*** %8, align 8
  %15 = call i32 @count_refspec_match(i32 %12, %struct.ref* %13, %struct.ref** %14)
  switch i32 %15, label %41 [
    i32 1, label %16
    i32 0, label %22
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  store i32 0, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.refspec_item*, %struct.refspec_item** %7, align 8
  %24 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ref**, %struct.ref*** %8, align 8
  %27 = call i32 @try_explicit_object_name(i32 %25, %struct.ref** %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.refspec_item*, %struct.refspec_item** %7, align 8
  %32 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @error(i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %22
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  store i32 0, i32* %5, align 4
  br label %47

41:                                               ; preds = %4
  %42 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.refspec_item*, %struct.refspec_item** %7, align 8
  %44 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @error(i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %40, %29, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @count_refspec_match(i32, %struct.ref*, %struct.ref**) #1

declare dso_local i32 @try_explicit_object_name(i32, %struct.ref**) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
