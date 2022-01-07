; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@parse = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@last_error_pos = common dso_local global i64 0, align 8
@last_error_line = common dso_local global i32 0, align 4
@last_error_line_pos = common dso_local global i32 0, align 4
@last_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parse, i32 0, i32 0), align 8
  %4 = load i64, i64* @last_error_pos, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parse, i32 0, i32 0), align 8
  store i64 %7, i64* @last_error_pos, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parse, i32 0, i32 2), align 4
  store i32 %8, i32* @last_error_line, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parse, i32 0, i32 1), align 8
  store i32 %9, i32* @last_error_line_pos, align 4
  %10 = load i64, i64* @last_error, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i64, i64* @last_error, align 8
  %14 = load i64, i64* @last_error, align 8
  %15 = call i64 @strlen(i64 %14)
  %16 = add nsw i64 %15, 1
  %17 = call i32 @zfree(i64 %13, i64 %16)
  br label %18

18:                                               ; preds = %12, %6
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @zstrdup(i8* %19)
  store i64 %20, i64* @last_error, align 8
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @zfree(i64, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @zstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
