; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_last36_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_check_last36_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repl_server_status = type { i8*, i8* }

@LEV_ROTATE_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_last36_bytes(%struct.repl_server_status* %0) #0 {
  %2 = alloca %struct.repl_server_status*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.repl_server_status* %0, %struct.repl_server_status** %2, align 8
  %7 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %8 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 36
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %16 = getelementptr inbounds %struct.repl_server_status, %struct.repl_server_status* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %14, %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.repl_server_status*, %struct.repl_server_status** %2, align 8
  %25 = call i32 @load_byte(%struct.repl_server_status* %24, i8** %3)
  %26 = or i32 %23, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @LEV_ROTATE_TO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %10

37:                                               ; preds = %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @load_byte(%struct.repl_server_status*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
