; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@suggs = common dso_local global i32 0, align 4
@prefr = common dso_local global i32 0, align 4
@ratings = common dso_local global i32 0, align 4
@idr = common dso_local global i32 0, align 4
@names = common dso_local global i32 0, align 4
@stemmed_names = common dso_local global i32 0, align 4
@names_buff = common dso_local global i32 0, align 4
@namesr = common dso_local global i32 0, align 4
@q_entry = common dso_local global i32 0, align 4
@qr = common dso_local global i32 0, align 4
@STAT_ST = common dso_local global i32 0, align 4
@q_rev = common dso_local global i32 0, align 4
@h_pref = common dso_local global i32 0, align 4
@h_id = common dso_local global i32 0, align 4
@h_q = common dso_local global i32 0, align 4
@aho_black_list = common dso_local global i32 0, align 4
@aho_black_list_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Memory left: %lld\0A\00", align 1
@h_word = common dso_local global i32 0, align 4
@wordr = common dso_local global i32 0, align 4
@words = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = load i64, i64* @verbosity, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %61

3:                                                ; preds = %0
  %4 = load i32, i32* @suggs, align 4
  %5 = load i32, i32* @prefr, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i32 @dl_free(i32 %4, i32 %8)
  %10 = load i32, i32* @ratings, align 4
  %11 = load i32, i32* @idr, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32 @dl_free(i32 %10, i32 %14)
  %16 = load i32, i32* @names, align 4
  %17 = load i32, i32* @idr, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @dl_free(i32 %16, i32 %20)
  %22 = load i32, i32* @stemmed_names, align 4
  %23 = load i32, i32* @idr, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @dl_free(i32 %22, i32 %26)
  %28 = load i32, i32* @names_buff, align 4
  %29 = load i32, i32* @namesr, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = call i32 @dl_free(i32 %28, i32 %32)
  %34 = load i32, i32* @q_entry, align 4
  %35 = load i32, i32* @qr, align 4
  %36 = load i32, i32* @STAT_ST, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dl_free(i32 %34, i32 %40)
  %42 = load i32, i32* @q_rev, align 4
  %43 = load i32, i32* @qr, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @dl_free(i32 %42, i32 %46)
  %48 = call i32 @hmap_ll_int_free(i32* @h_pref)
  %49 = call i32 @hmap_ll_int_free(i32* @h_id)
  %50 = call i32 @hmap_ll_int_free(i32* @h_q)
  %51 = load i32, i32* @aho_black_list, align 4
  %52 = load i32, i32* @aho_black_list_size, align 4
  %53 = call i32 @dl_free(i32 %51, i32 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = call i64 (...) @dl_get_memory_used()
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = call i64 (...) @dl_get_memory_used()
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @dl_free(i32, i32) #1

declare dso_local i32 @hmap_ll_int_free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
