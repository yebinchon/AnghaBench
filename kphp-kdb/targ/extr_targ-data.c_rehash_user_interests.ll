; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_rehash_user_interests.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_rehash_user_interests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, %struct.interest* }
%struct.interest = type { i64, %struct.interest* }

@Hc = common dso_local global i64 0, align 8
@q_interests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rehash_user_interests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash_user_interests(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.interest*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %54

7:                                                ; preds = %1
  store i64 0, i64* @Hc, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load %struct.interest*, %struct.interest** %9, align 8
  store %struct.interest* %10, %struct.interest** %3, align 8
  br label %11

11:                                               ; preds = %20, %7
  %12 = load %struct.interest*, %struct.interest** %3, align 8
  %13 = icmp ne %struct.interest* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.interest*, %struct.interest** %3, align 8
  %16 = getelementptr inbounds %struct.interest, %struct.interest* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @q_interests, align 4
  %19 = call i32 @prepare_words_hashlist(i64 %17, i32 1, i32 -1, i32 0, i32 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.interest*, %struct.interest** %3, align 8
  %22 = getelementptr inbounds %struct.interest, %struct.interest* %21, i32 0, i32 1
  %23 = load %struct.interest*, %struct.interest** %22, align 8
  store %struct.interest* %23, %struct.interest** %3, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @q_interests, align 4
  %34 = call i32 @prepare_words_hashlist(i64 %32, i32 1, i32 2, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @delete_user_hashlist(i32 %38, i32 %41)
  %43 = load i32, i32* @q_interests, align 4
  %44 = call i32 @save_words_hashlist(i32 0, i32 -1, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @add_user_hashlist(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %35, %6
  ret void
}

declare dso_local i32 @prepare_words_hashlist(i64, i32, i32, i32, i32) #1

declare dso_local i32 @delete_user_hashlist(i32, i32) #1

declare dso_local i32 @save_words_hashlist(i32, i32, i32) #1

declare dso_local i32 @add_user_hashlist(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
