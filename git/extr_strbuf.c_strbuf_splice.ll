; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_splice.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"you want to use way too much memory\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"`pos' is too far after the end of the buffer\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"`pos + len' is too far after the end of the buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_splice(%struct.strbuf* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @unsigned_add_overflows(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %26, %27
  %29 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %41, %42
  %44 = call i32 @strbuf_grow(%struct.strbuf* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %50, %51
  %53 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %62, %63
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %64, %65
  %67 = call i32 @memmove(i64 %52, i64 %59, i64 %66)
  %68 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %70, %71
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @memcpy(i64 %72, i8* %73, i64 %74)
  %76 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %77 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @strbuf_setlen(%struct.strbuf* %76, i64 %83)
  ret void
}

declare dso_local i64 @unsigned_add_overflows(i64, i64) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
