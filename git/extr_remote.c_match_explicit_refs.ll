; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_match_explicit_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_match_explicit_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.refspec = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.ref*, %struct.ref***, %struct.refspec*)* @match_explicit_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_explicit_refs(%struct.ref* %0, %struct.ref* %1, %struct.ref*** %2, %struct.refspec* %3) #0 {
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref***, align 8
  %8 = alloca %struct.refspec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store %struct.ref*** %2, %struct.ref**** %7, align 8
  store %struct.refspec* %3, %struct.refspec** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %32, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.refspec*, %struct.refspec** %8, align 8
  %14 = getelementptr inbounds %struct.refspec, %struct.refspec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.ref*, %struct.ref** %5, align 8
  %19 = load %struct.ref*, %struct.ref** %6, align 8
  %20 = load %struct.ref***, %struct.ref**** %7, align 8
  %21 = load %struct.refspec*, %struct.refspec** %8, align 8
  %22 = getelementptr inbounds %struct.refspec, %struct.refspec* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i64 @match_explicit(%struct.ref* %18, %struct.ref* %19, %struct.ref*** %20, i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i64 @match_explicit(%struct.ref*, %struct.ref*, %struct.ref***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
