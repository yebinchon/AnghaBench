; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_load_saved_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_load_saved_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.keep_mc_store = type { i64, i32, i64 }

@FRIENDS_STORE_MAGIC = common dso_local global i64 0, align 8
@user_num = common dso_local global i32 0, align 4
@list_id = common dso_local global i64 0, align 8
@userlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @friends_load_saved_data(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.keep_mc_store*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.keep_mc_store*
  store %struct.keep_mc_store* %15, %struct.keep_mc_store** %3, align 8
  %16 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %17 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FRIENDS_STORE_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %24 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* @user_num, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* @user_num, align 4
  store i64 0, i64* @list_id, align 8
  br label %53

27:                                               ; preds = %9
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @nbit_set(i32* %4, %struct.TYPE_2__* %30)
  %32 = call i32 @nbit_advance(i32* %4, i32 24)
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 24
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @userlist, align 4
  %38 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %39 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 4, %40
  %42 = call i32 @nbit_read_in(i32* %4, i32 %37, i32 %41)
  %43 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %44 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 4, %45
  %47 = icmp eq i32 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.keep_mc_store*, %struct.keep_mc_store** %3, align 8
  %51 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* @list_id, align 8
  br label %53

53:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_set(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

declare dso_local i32 @nbit_read_in(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
