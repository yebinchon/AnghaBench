; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_save_black_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_save_black_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@black_list = common dso_local global i32 0, align 4
@buff = common dso_local global i64 0, align 8
@buff2 = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_black_list() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @black_list, align 4
  %3 = load i64, i64* @buff, align 8
  %4 = call i32 @trie_encode(i32 %2, i64 %3, i32 0)
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @buff, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load i32, i32* @buff2, align 4
  %8 = call i32 @trie_arr_text_save(i32* %6, i32 %7, i32* %1)
  %9 = load i64, i64* @buff, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = call i32 @trie_arr_aho(i32* %10)
  %12 = load i32*, i32** @fd, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @buff2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @write(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @trie_encode(i32, i64, i32) #1

declare dso_local i32 @trie_arr_text_save(i32*, i32, i32*) #1

declare dso_local i32 @trie_arr_aho(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
