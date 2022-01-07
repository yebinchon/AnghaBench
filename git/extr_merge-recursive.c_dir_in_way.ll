; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_in_way.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_dir_in_way.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i32, i32)* @dir_in_way to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_in_way(%struct.index_state* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.stat, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %14)
  %16 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 47)
  %17 = load %struct.index_state*, %struct.index_state** %6, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @index_name_pos(%struct.index_state* %17, i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 -1, %26
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.index_state*, %struct.index_state** %6, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.index_state*, %struct.index_state** %6, align 8
  %38 = getelementptr inbounds %struct.index_state, %struct.index_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strncmp(i32 %36, i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %34
  %51 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 1, i32* %5, align 4
  br label %82

52:                                               ; preds = %34, %28
  %53 = call i32 @strbuf_release(%struct.strbuf* %11)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @lstat(i8* %57, %struct.stat* %12)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @is_empty_dir(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %65
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @has_symlink_leading_path(i8* %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %72, %68, %60, %56, %52
  %80 = phi i1 [ false, %68 ], [ false, %60 ], [ false, %56 ], [ false, %52 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %50
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #2

declare dso_local i32 @strncmp(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @is_empty_dir(i8*) #2

declare dso_local i32 @has_symlink_leading_path(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
