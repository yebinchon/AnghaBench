; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_compress.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_gkc.c_gkc_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i32, i32, %struct.list }
%struct.list = type { %struct.list* }
%struct.gkc_tuple = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gkc_summary*)* @gkc_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gkc_compress(%struct.gkc_summary* %0) #0 {
  %2 = alloca %struct.gkc_summary*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.gkc_tuple*, align 8
  %7 = alloca %struct.gkc_tuple*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gkc_summary* %0, %struct.gkc_summary** %2, align 8
  %10 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %11 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 2, %12
  %14 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %15 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %19 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %89

23:                                               ; preds = %1
  %24 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %25 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.list, %struct.list* %25, i32 0, i32 0
  %27 = load %struct.list*, %struct.list** %26, align 8
  store %struct.list* %27, %struct.list** %5, align 8
  %28 = load %struct.list*, %struct.list** %5, align 8
  %29 = getelementptr inbounds %struct.list, %struct.list* %28, i32 0, i32 0
  %30 = load %struct.list*, %struct.list** %29, align 8
  store %struct.list* %30, %struct.list** %4, align 8
  br label %31

31:                                               ; preds = %84, %68, %23
  %32 = load %struct.list*, %struct.list** %4, align 8
  %33 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %34 = getelementptr inbounds %struct.gkc_summary, %struct.gkc_summary* %33, i32 0, i32 2
  %35 = icmp ne %struct.list* %32, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %31
  %37 = load %struct.list*, %struct.list** %4, align 8
  %38 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %37)
  store %struct.gkc_tuple* %38, %struct.gkc_tuple** %6, align 8
  %39 = load %struct.list*, %struct.list** %5, align 8
  %40 = call %struct.gkc_tuple* @list_to_tuple(%struct.list* %39)
  store %struct.gkc_tuple* %40, %struct.gkc_tuple** %7, align 8
  %41 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %42 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %43 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @band(%struct.gkc_summary* %41, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %47 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %48 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @band(%struct.gkc_summary* %46, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %36
  %55 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %56 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %59 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %63 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %54
  %69 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %70 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gkc_tuple*, %struct.gkc_tuple** %7, align 8
  %73 = getelementptr inbounds %struct.gkc_tuple, %struct.gkc_tuple* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.list*, %struct.list** %4, align 8
  %77 = call i32 @list_del(%struct.list* %76)
  %78 = load %struct.gkc_summary*, %struct.gkc_summary** %2, align 8
  %79 = load %struct.gkc_tuple*, %struct.gkc_tuple** %6, align 8
  %80 = call i32 @gkc_free(%struct.gkc_summary* %78, %struct.gkc_tuple* %79)
  %81 = load %struct.list*, %struct.list** %5, align 8
  %82 = getelementptr inbounds %struct.list, %struct.list* %81, i32 0, i32 0
  %83 = load %struct.list*, %struct.list** %82, align 8
  store %struct.list* %83, %struct.list** %4, align 8
  br label %31

84:                                               ; preds = %54, %36
  %85 = load %struct.list*, %struct.list** %4, align 8
  store %struct.list* %85, %struct.list** %5, align 8
  %86 = load %struct.list*, %struct.list** %4, align 8
  %87 = getelementptr inbounds %struct.list, %struct.list* %86, i32 0, i32 0
  %88 = load %struct.list*, %struct.list** %87, align 8
  store %struct.list* %88, %struct.list** %4, align 8
  br label %31

89:                                               ; preds = %22, %31
  ret void
}

declare dso_local %struct.gkc_tuple* @list_to_tuple(%struct.list*) #1

declare dso_local i64 @band(%struct.gkc_summary*, i32) #1

declare dso_local i32 @list_del(%struct.list*) #1

declare dso_local i32 @gkc_free(%struct.gkc_summary*, %struct.gkc_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
