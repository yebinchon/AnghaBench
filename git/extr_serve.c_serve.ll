; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_serve.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_serve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serve_options = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"version 2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serve(%struct.serve_options* %0) #0 {
  %2 = alloca %struct.serve_options*, align 8
  store %struct.serve_options* %0, %struct.serve_options** %2, align 8
  %3 = load %struct.serve_options*, %struct.serve_options** %2, align 8
  %4 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.serve_options*, %struct.serve_options** %2, align 8
  %9 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7, %1
  %13 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @advertise_capabilities()
  %15 = load %struct.serve_options*, %struct.serve_options** %2, align 8
  %16 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %35

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %7
  %22 = load %struct.serve_options*, %struct.serve_options** %2, align 8
  %23 = getelementptr inbounds %struct.serve_options, %struct.serve_options* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i64 (...) @process_request()
  br label %35

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %33, %28
  %30 = call i64 (...) @process_request()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  br label %29

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %19, %34, %26
  ret void
}

declare dso_local i32 @packet_write_fmt(i32, i8*) #1

declare dso_local i32 @advertise_capabilities(...) #1

declare dso_local i64 @process_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
