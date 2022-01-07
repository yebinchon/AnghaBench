; ModuleID = '/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_handshake.c'
source_filename = "/home/carl/AnghaBench/git/extr_sub-process.c_subprocess_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subprocess_entry = type { %struct.child_process }
%struct.child_process = type { i32 }
%struct.subprocess_capability = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subprocess_handshake(%struct.subprocess_entry* %0, i8* %1, i32* %2, i32* %3, %struct.subprocess_capability* %4, i32* %5) #0 {
  %7 = alloca %struct.subprocess_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.subprocess_capability*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.child_process*, align 8
  store %struct.subprocess_entry* %0, %struct.subprocess_entry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.subprocess_capability* %4, %struct.subprocess_capability** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.subprocess_entry*, %struct.subprocess_entry** %7, align 8
  %16 = getelementptr inbounds %struct.subprocess_entry, %struct.subprocess_entry* %15, i32 0, i32 0
  store %struct.child_process* %16, %struct.child_process** %14, align 8
  %17 = load i32, i32* @SIGPIPE, align 4
  %18 = load i32, i32* @SIG_IGN, align 4
  %19 = call i32 @sigchain_push(i32 %17, i32 %18)
  %20 = load %struct.child_process*, %struct.child_process** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @handshake_version(%struct.child_process* %20, i8* %21, i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load %struct.child_process*, %struct.child_process** %14, align 8
  %28 = load %struct.subprocess_capability*, %struct.subprocess_capability** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i64 @handshake_capabilities(%struct.child_process* %27, %struct.subprocess_capability* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %6
  %33 = phi i1 [ true, %6 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @SIGPIPE, align 4
  %36 = call i32 @sigchain_pop(i32 %35)
  %37 = load i32, i32* %13, align 4
  ret i32 %37
}

declare dso_local i32 @sigchain_push(i32, i32) #1

declare dso_local i64 @handshake_version(%struct.child_process*, i8*, i32*, i32*) #1

declare dso_local i64 @handshake_capabilities(%struct.child_process*, %struct.subprocess_capability*, i32*) #1

declare dso_local i32 @sigchain_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
