; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_find_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_find_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.string_list_item = type { i32 }

@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"'%s' is a symref but it is not?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @find_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_symref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.string_list_item*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @REF_ISSYMREF, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @resolve_ref_unsafe(i8* %18, i32 0, i32* null, i32* %8)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @REF_ISSYMREF, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strip_namespace(i8* %32)
  %34 = call %struct.string_list_item* @string_list_append(i8* %31, i32 %33)
  store %struct.string_list_item* %34, %struct.string_list_item** %11, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strip_namespace(i8* %35)
  %37 = call i32 @xstrdup(i32 %36)
  %38 = load %struct.string_list_item*, %struct.string_list_item** %11, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %16
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_append(i8*, i32) #1

declare dso_local i32 @strip_namespace(i8*) #1

declare dso_local i32 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
