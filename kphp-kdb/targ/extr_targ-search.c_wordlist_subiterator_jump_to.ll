; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_wordlist_subiterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_wordlist_subiterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordlist_subiterator = type { i32, i32, i32 }

@INFTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wordlist_subiterator_jump_to(%struct.wordlist_subiterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wordlist_subiterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wordlist_subiterator* %0, %struct.wordlist_subiterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %9 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %15 = call i32 @wordlist_subiterator_next(%struct.wordlist_subiterator* %14)
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %19 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %25 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %29 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %28, i32 0, i32 1
  %30 = call i32 @mlist_forward_decode_idx(i32 %26, i32 %27, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2147483647
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  br label %37

35:                                               ; preds = %16
  %36 = load i32, i32* @INFTY, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %40 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 %38, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @wordlist_subiterator_next(%struct.wordlist_subiterator*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mlist_forward_decode_idx(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
