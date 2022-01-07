; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_process_ls_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_process_ls_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_ls_ctx = type { i8*, i32, i32 }

@IS_DIR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote_ls_ctx*)* @process_ls_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ls_ref(%struct.remote_ls_ctx* %0) #0 {
  %2 = alloca %struct.remote_ls_ctx*, align 8
  store %struct.remote_ls_ctx* %0, %struct.remote_ls_ctx** %2, align 8
  %3 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @strcmp(i32 %5, i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IS_DIR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %36

24:                                               ; preds = %11, %1
  %25 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IS_DIR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @one_remote_ref(i8* %34)
  br label %36

36:                                               ; preds = %18, %31, %24
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @one_remote_ref(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
