; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_unload_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_unload_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@user_table = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_6__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unload_user_metafile (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot unload user metafile (%d)\0A\00", align 1
@cur_users = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unload_user_metafile (%d) END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unload_user_metafile(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  store i32 -1, i32* %4, align 4
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %14 = ptrtoint %struct.TYPE_6__* %12 to i64
  %15 = ptrtoint %struct.TYPE_6__* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 24
  %18 = trunc i64 %17 to i32
  %19 = call i64 @ltbl_get_rev(i32* @user_table, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %11, %1
  %22 = load i32, i32* @verbosity, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @verbosity, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  store i32 0, i32* %2, align 4
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i32 @del_user_used(%struct.TYPE_6__* %47)
  %49 = load i32, i32* @cur_users, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @cur_users, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @allocated_metafile_bytes, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* @allocated_metafile_bytes, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @unbind_user_metafile(%struct.TYPE_6__* %58)
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %46
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ltbl_get_rev(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @del_user_used(%struct.TYPE_6__*) #1

declare dso_local i32 @unbind_user_metafile(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
