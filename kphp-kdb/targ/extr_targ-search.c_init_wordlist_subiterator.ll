; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_init_wordlist_subiterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_init_wordlist_subiterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordlist_subiterator = type { i8*, i32, i32, i32 }

@idx_max_uid = common dso_local global i64 0, align 8
@INTERPOLATIVE_CODE_JUMP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_wordlist_subiterator(%struct.wordlist_subiterator* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wordlist_subiterator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.wordlist_subiterator* %0, %struct.wordlist_subiterator** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @idx_max_uid, align 8
  %8 = add nsw i64 %7, 1
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @INTERPOLATIVE_CODE_JUMP_SIZE, align 4
  %11 = call i32 @zmalloc_mlist_decoder(i64 %8, i32 -1, i8* %9, i32 0, i32 %10)
  %12 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %13 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %19 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %21 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %24 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %23, i32 0, i32 1
  %25 = call i32 @mlist_decode_pair(i32 %22, i32* %24)
  %26 = load %struct.wordlist_subiterator*, %struct.wordlist_subiterator** %4, align 8
  %27 = getelementptr inbounds %struct.wordlist_subiterator, %struct.wordlist_subiterator* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local i32 @zmalloc_mlist_decoder(i64, i32, i8*, i32, i32) #1

declare dso_local i32 @mlist_decode_pair(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
