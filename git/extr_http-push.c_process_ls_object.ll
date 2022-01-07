; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_process_ls_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_process_ls_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_ls_ctx = type { i8*, i32, i32, i64 }
%struct.object_id = type { i32 }

@IS_DIR = common dso_local global i32 0, align 4
@remote_dir_exists = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"objects/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote_ls_ctx*)* @process_ls_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ls_object(%struct.remote_ls_ctx* %0) #0 {
  %2 = alloca %struct.remote_ls_ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  store %struct.remote_ls_ctx* %0, %struct.remote_ls_ctx** %2, align 8
  %6 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i32 %15, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.remote_ls_ctx*, %struct.remote_ls_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.remote_ls_ctx, %struct.remote_ls_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IS_DIR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32*, i32** @remote_dir_exists, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 1, i32* %33, align 4
  br label %45

34:                                               ; preds = %21, %1
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @skip_prefix(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @get_oid_hex_from_objpath(i8* %39, %struct.object_id* %5)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %45

43:                                               ; preds = %38
  %44 = call i32 @one_remote_object(%struct.object_id* %5)
  br label %45

45:                                               ; preds = %43, %42, %28
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex_from_objpath(i8*, %struct.object_id*) #1

declare dso_local i32 @one_remote_object(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
