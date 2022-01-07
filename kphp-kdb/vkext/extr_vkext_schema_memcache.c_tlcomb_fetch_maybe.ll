; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_maybe.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tlcomb_fetch_maybe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@TLUNI_OK = common dso_local global i64 0, align 8
@TLUNI_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tlcomb_fetch_maybe(i8** %0, i8** %1, i32** %2, %struct.tl_tree** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tl_tree**, align 8
  %10 = alloca i8**, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.tl_tree** %3, %struct.tl_tree*** %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %6, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %10, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = load %struct.tl_tree**, %struct.tl_tree*** %9, align 8
  %19 = call i64 @TLUNI_START(i8** %15, i8** %16, i32** %17, %struct.tl_tree** %18)
  %20 = load i64, i64* @TLUNI_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32**, i32*** %8, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i32 -1
  store i32** %24, i32*** %8, align 8
  store i8* null, i8** %5, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @TLUNI_NEXT, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %5, align 8
  ret i8* %28
}

declare dso_local i64 @TLUNI_START(i8**, i8**, i32**, %struct.tl_tree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
