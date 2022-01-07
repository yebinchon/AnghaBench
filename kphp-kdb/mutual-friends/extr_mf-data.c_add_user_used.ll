; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_add_user_used.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_add_user_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"?(+%d)\00", align 1
@user_table = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_6__* null, align 8
@LRU_head = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_user_used(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sgt i32 %5, 3
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %11 = ptrtoint %struct.TYPE_6__* %9 to i64
  %12 = ptrtoint %struct.TYPE_6__* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  %15 = trunc i64 %14 to i32
  %16 = call i32 @ltbl_get_rev(i32* @user_table, i32 %15)
  %17 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %21 = ptrtoint %struct.TYPE_6__* %19 to i64
  %22 = ptrtoint %struct.TYPE_6__* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ltbl_get_rev(i32* @user_table, i32 %25)
  %27 = call i32 @dump_lru(i8* %18, i32 %26)
  br label %28

28:                                               ; preds = %7, %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @user_loaded(%struct.TYPE_6__* %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load i32, i32* @verbosity, align 4
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %65, label %67

65:                                               ; preds = %28
  %66 = call i32 @dump_lru(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %67

67:                                               ; preds = %65, %28
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ltbl_get_rev(i32*, i32) #1

declare dso_local i32 @dump_lru(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
