; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_search_postfix_add.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_search_postfix_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.search_domain*, i32 }
%struct.search_domain = type { i32, %struct.search_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_base*, i8*)* @search_postfix_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_postfix_add(%struct.evdns_base* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.search_domain*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %7

7:                                                ; preds = %13, %2
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 46
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %20 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %19)
  %21 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %22 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = call %struct.TYPE_2__* (...) @search_state_new()
  %27 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %28 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %27, i32 0, i32 0
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %31 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %73

35:                                               ; preds = %29
  %36 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %37 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 16, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @mm_malloc(i32 %44)
  %46 = inttoptr i64 %45 to %struct.search_domain*
  store %struct.search_domain* %46, %struct.search_domain** %6, align 8
  %47 = load %struct.search_domain*, %struct.search_domain** %6, align 8
  %48 = icmp ne %struct.search_domain* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %73

50:                                               ; preds = %35
  %51 = load %struct.search_domain*, %struct.search_domain** %6, align 8
  %52 = bitcast %struct.search_domain* %51 to i32*
  %53 = getelementptr inbounds i32, i32* %52, i64 16
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @memcpy(i32* %53, i8* %54, i64 %55)
  %57 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %58 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.search_domain*, %struct.search_domain** %60, align 8
  %62 = load %struct.search_domain*, %struct.search_domain** %6, align 8
  %63 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %62, i32 0, i32 1
  store %struct.search_domain* %61, %struct.search_domain** %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.search_domain*, %struct.search_domain** %6, align 8
  %67 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.search_domain*, %struct.search_domain** %6, align 8
  %69 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %70 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.search_domain* %68, %struct.search_domain** %72, align 8
  br label %73

73:                                               ; preds = %50, %49, %34
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local %struct.TYPE_2__* @search_state_new(...) #1

declare dso_local i64 @mm_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
