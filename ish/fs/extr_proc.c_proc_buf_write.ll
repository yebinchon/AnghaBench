; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_buf_write.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_buf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_data = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_buf_write(%struct.proc_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.proc_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.proc_data* %0, %struct.proc_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %10 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %15 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %20 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %30, %18
  %23 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %24 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = mul i64 %31, 2
  store i64 %32, i64* %7, align 8
  br label %22

33:                                               ; preds = %22
  %34 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %35 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @realloc(i8* %36, i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %76

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %45 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %48 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %3
  %50 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %51 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %56 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ule i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %62 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %65 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.proc_data*, %struct.proc_data** %4, align 8
  %73 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %49, %41
  ret void
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
