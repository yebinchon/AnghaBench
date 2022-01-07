; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_tips.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_tips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 }
%struct.oid_array = type { i32, i32* }

@rev_list_insert_ref_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_negotiator*, %struct.oid_array*)* @mark_tips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_tips(%struct.fetch_negotiator* %0, %struct.oid_array* %1) #0 {
  %3 = alloca %struct.fetch_negotiator*, align 8
  %4 = alloca %struct.oid_array*, align 8
  %5 = alloca i32, align 4
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %3, align 8
  store %struct.oid_array* %1, %struct.oid_array** %4, align 8
  %6 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %7 = icmp ne %struct.oid_array* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @rev_list_insert_ref_oid, align 4
  %10 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %11 = call i32 @for_each_ref(i32 %9, %struct.fetch_negotiator* %10)
  br label %32

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %16 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %21 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %22 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @rev_list_insert_ref(%struct.fetch_negotiator* %20, i32* null, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %8
  ret void
}

declare dso_local i32 @for_each_ref(i32, %struct.fetch_negotiator*) #1

declare dso_local i32 @rev_list_insert_ref(%struct.fetch_negotiator*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
