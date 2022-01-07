; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_religion.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_religion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_religion = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@LEV_TARG_RELIGION = common dso_local global i64 0, align 8
@q_religion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_religion(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_religion*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 256
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @conv_user_id(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %75

20:                                               ; preds = %15
  %21 = load i64, i64* @LEV_TARG_RELIGION, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 9, %25
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.lev_religion* @alloc_log_event(i64 %24, i32 %26, i32 %27)
  store %struct.lev_religion* %28, %struct.lev_religion** %8, align 8
  %29 = load %struct.lev_religion*, %struct.lev_religion** %8, align 8
  %30 = getelementptr inbounds %struct.lev_religion, %struct.lev_religion* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @filter_simple_text(i32 %31, i8* %32, i32 %33)
  %35 = load %struct.lev_religion*, %struct.lev_religion** %8, align 8
  %36 = getelementptr inbounds %struct.lev_religion, %struct.lev_religion* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_3__* @get_user(i32 %37)
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %20
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @exact_strfree(i32 %44)
  %46 = load %struct.lev_religion*, %struct.lev_religion** %8, align 8
  %47 = getelementptr inbounds %struct.lev_religion, %struct.lev_religion* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @exact_strdup(i32 %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @delete_user_hashlist(i32 %55, i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @q_religion, align 4
  %64 = call i32 @save_words_hashlist(i32 %62, i32 0, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @add_user_hashlist(i32 %69, i32 %72)
  store i32 1, i32* %4, align 4
  br label %75

74:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %41, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @conv_user_id(i32) #1

declare dso_local %struct.lev_religion* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @filter_simple_text(i32, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i32 @exact_strfree(i32) #1

declare dso_local i32 @exact_strdup(i32, i32) #1

declare dso_local i32 @delete_user_hashlist(i32, i32) #1

declare dso_local i32 @save_words_hashlist(i32, i32, i32) #1

declare dso_local i32 @add_user_hashlist(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
