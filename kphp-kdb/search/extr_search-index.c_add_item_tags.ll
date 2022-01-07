; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_add_item_tags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_add_item_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i8*, i32 }

@deleted_text_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64)* @add_item_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item_tags(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call %struct.item* @get_item_f(i64 %11, i32 1)
  store %struct.item* %12, %struct.item** %8, align 8
  %13 = load %struct.item*, %struct.item** %8, align 8
  %14 = icmp eq %struct.item* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

16:                                               ; preds = %3
  %17 = load %struct.item*, %struct.item** %8, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load %struct.item*, %struct.item** %8, align 8
  %22 = getelementptr inbounds %struct.item, %struct.item* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i8* @zzmalloc(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcpy(i8* %32, i8* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 32, i8* %38, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load %struct.item*, %struct.item** %8, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcpy(i8* %43, i8* %46)
  %48 = load %struct.item*, %struct.item** %8, align 8
  %49 = getelementptr inbounds %struct.item, %struct.item* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.item*, %struct.item** %8, align 8
  %52 = getelementptr inbounds %struct.item, %struct.item* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = call i32 @zzfree(i8* %50, i32 %54)
  %56 = load %struct.item*, %struct.item** %8, align 8
  %57 = getelementptr inbounds %struct.item, %struct.item* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @deleted_text_bytes, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* @deleted_text_bytes, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.item*, %struct.item** %8, align 8
  %63 = getelementptr inbounds %struct.item, %struct.item* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.item*, %struct.item** %8, align 8
  %66 = getelementptr inbounds %struct.item, %struct.item* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %16, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.item* @get_item_f(i64, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @zzfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
