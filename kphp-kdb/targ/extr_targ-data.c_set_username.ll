; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_username.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_username = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"name of %d: '%s' (len=%d)\0A\00", align 1
@q_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_username*, i32)* @set_username to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_username(%struct.lev_username* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_username*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.lev_username* %0, %struct.lev_username** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.lev_username*, %struct.lev_username** %4, align 8
  %12 = getelementptr inbounds %struct.lev_username, %struct.lev_username* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.lev_username*, %struct.lev_username** %4, align 8
  %15 = getelementptr inbounds %struct.lev_username, %struct.lev_username* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %57, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %30
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 32
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %52, i32 %53)
  br label %60

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %26

60:                                               ; preds = %49, %26
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.TYPE_4__* @get_user_f(i32 %65)
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %10, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %102

69:                                               ; preds = %60
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @exact_strfree(i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @exact_strdup(i8* %74, i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @delete_user_hashlist(i32 %81, i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @q_name, align 4
  %90 = call i32 @save_words_hashlist_pattern(i32 %88, i32 0, i32 -3, i32 1, i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @add_user_hashlist(i32 %95, i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = call i32 @rehash_user_interests(%struct.TYPE_4__* %100)
  store i32 1, i32* %3, align 4
  br label %103

102:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %69
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @get_user_f(i32) #1

declare dso_local i32 @exact_strfree(i32) #1

declare dso_local i32 @exact_strdup(i8*, i32) #1

declare dso_local i32 @delete_user_hashlist(i32, i32) #1

declare dso_local i32 @save_words_hashlist_pattern(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_user_hashlist(i32, i32) #1

declare dso_local i32 @rehash_user_interests(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
