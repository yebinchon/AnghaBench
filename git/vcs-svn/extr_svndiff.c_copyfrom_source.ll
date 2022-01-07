; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_copyfrom_source.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_copyfrom_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"invalid delta: copies source data outside view\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, i8**, i64, i8*)* @copyfrom_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyfrom_source(%struct.window* %0, i8** %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.window*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @parse_int(i8** %11, i64* %10, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %46

16:                                               ; preds = %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @unsigned_add_overflows(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.window*, %struct.window** %6, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21, %16
  %32 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %5, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.window*, %struct.window** %6, align 8
  %35 = getelementptr inbounds %struct.window, %struct.window* %34, i32 0, i32 1
  %36 = load %struct.window*, %struct.window** %6, align 8
  %37 = getelementptr inbounds %struct.window, %struct.window* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @strbuf_add(i32* %35, i64 %43, i64 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %33, %31, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @parse_int(i8**, i64*, i8*) #1

declare dso_local i64 @unsigned_add_overflows(i64, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strbuf_add(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
