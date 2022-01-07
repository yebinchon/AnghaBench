; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_write_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32, i32, i32, i32, i32, i32 }

@schema_version = common dso_local global i32 0, align 4
@TLS_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_type(%struct.tl_type* %0) #0 {
  %2 = alloca %struct.tl_type*, align 8
  store %struct.tl_type* %0, %struct.tl_type** %2, align 8
  %3 = load i32, i32* @schema_version, align 4
  %4 = icmp sge i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* @TLS_TYPE, align 4
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 1, %7 ]
  %10 = call i32 @wint(i32 %9)
  %11 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %12 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wint(i32 %13)
  %15 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %16 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wstr(i32 %17)
  %19 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %20 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wint(i32 %21)
  %23 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %24 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wint(i32 %25)
  %27 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %28 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wint(i32 %29)
  %31 = load %struct.tl_type*, %struct.tl_type** %2, align 8
  %32 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wll(i32 %33)
  ret void
}

declare dso_local i32 @wint(i32) #1

declare dso_local i32 @wstr(i32) #1

declare dso_local i32 @wll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
