; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_conv_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_conv_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@h_users = common dso_local global i32 0, align 4
@cur_local_id = common dso_local global i32 0, align 4
@user_cnt = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @conv_uid(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @log_split_mod, align 4
  %11 = srem i32 %9, %10
  %12 = load i32, i32* @log_split_min, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %46

15:                                               ; preds = %8
  %16 = call i64 @hset_intp_add(i32* @h_users, i32* %3)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %17, %struct.TYPE_4__*** %4, align 8
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = bitcast i32* %3 to %struct.TYPE_4__*
  %21 = icmp eq %struct.TYPE_4__* %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load i32, i32* @cur_local_id, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @user_cnt, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @users, align 8
  %30 = load i32, i32* @cur_local_id, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @cur_local_id, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @cur_local_id, align 4
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %22, %15
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %2, align 8
  br label %46

46:                                               ; preds = %43, %14, %7
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %47
}

declare dso_local i64 @hset_intp_add(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
