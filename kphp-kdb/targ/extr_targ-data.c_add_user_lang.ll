; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_user_lang.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_user_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_LANGS = common dso_local global i32 0, align 4
@max_lang_id = common dso_local global i32 0, align 4
@min_lang_id = common dso_local global i32 0, align 4
@user_lang_pairs = common dso_local global i32 0, align 4
@q_lang_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @add_user_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_user_lang(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAX_LANGS, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @max_lang_id, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* @max_lang_id, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @min_lang_id, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* @min_lang_id, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @user_lang_pairs, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @user_lang_pairs, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @q_lang_id, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @field_value_hash(i32 %28, i32 %29)
  %31 = call i32 @add_user_word(i32 %27, i32 %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @add_user_word(i32, i32) #1

declare dso_local i32 @field_value_hash(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
