; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_filter_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_filter_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_filter = type { i32 (i8*, %struct.object_id.0*, i32, i32)*, i32, i64, i32 }
%struct.object_id.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @filter_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_refs(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref_filter*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.ref_filter*
  store %struct.ref_filter* %12, %struct.ref_filter** %10, align 8
  %13 = load %struct.ref_filter*, %struct.ref_filter** %10, align 8
  %14 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @wildmatch(i32 %15, i8* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

20:                                               ; preds = %4
  %21 = load %struct.ref_filter*, %struct.ref_filter** %10, align 8
  %22 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ref_filter*, %struct.ref_filter** %10, align 8
  %28 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @skip_prefix(i8* %26, i64 %29, i8** %6)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.ref_filter*, %struct.ref_filter** %10, align 8
  %33 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %32, i32 0, i32 0
  %34 = load i32 (i8*, %struct.object_id.0*, i32, i32)*, i32 (i8*, %struct.object_id.0*, i32, i32)** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.object_id*, %struct.object_id** %7, align 8
  %37 = bitcast %struct.object_id* %36 to %struct.object_id.0*
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ref_filter*, %struct.ref_filter** %10, align 8
  %40 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %34(i8* %35, %struct.object_id.0* %37, i32 %38, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %31, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @wildmatch(i32, i8*, i32) #1

declare dso_local i32 @skip_prefix(i8*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
