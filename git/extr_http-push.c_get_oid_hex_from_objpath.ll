; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_get_oid_hex_from_objpath.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_get_oid_hex_from_objpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.object_id = type { i64 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*)* @get_oid_hex_from_objpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oid_hex_from_objpath(i8* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = icmp ne i64 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = getelementptr inbounds %struct.object_id, %struct.object_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @hex_to_bytes(i64 %17, i8* %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %37

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load %struct.object_id*, %struct.object_id** %5, align 8
  %28 = getelementptr inbounds %struct.object_id, %struct.object_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @hex_to_bytes(i64 %30, i8* %31, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %22, %21, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hex_to_bytes(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
