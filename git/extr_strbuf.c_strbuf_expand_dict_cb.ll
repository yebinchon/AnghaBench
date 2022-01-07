; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_expand_dict_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_expand_dict_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.strbuf_expand_dict_entry = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strbuf_expand_dict_cb(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf_expand_dict_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.strbuf_expand_dict_entry*
  store %struct.strbuf_expand_dict_entry* %11, %struct.strbuf_expand_dict_entry** %8, align 8
  br label %12

12:                                               ; preds = %47, %3
  %13 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %14 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %19 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @strlen(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ %22, %17 ]
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %28 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @strncmp(i8* %26, i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %25
  %34 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %35 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %41 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @strbuf_addstr(%struct.strbuf* %39, i64 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %51

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.strbuf_expand_dict_entry*, %struct.strbuf_expand_dict_entry** %8, align 8
  %49 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %48, i32 1
  store %struct.strbuf_expand_dict_entry* %49, %struct.strbuf_expand_dict_entry** %8, align 8
  br label %12

50:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @strncmp(i8*, i64, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
