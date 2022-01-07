; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_return_one_key_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_return_one_key_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@return_one_key_int.buff = internal global [256 x i8] zeroinitializer, align 16
@return_one_key_int.s = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"i:%d;\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"VALUE %s 1 %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @return_one_key_int(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @return_one_key_int.s, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @return_one_key_int.buff, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @write_out(i32* %15, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @return_one_key_int.buff, i64 0, i64 0), i32 %16)
  %18 = load %struct.connection*, %struct.connection** %4, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @write_out(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @return_one_key_int.s, i64 0, i64 0), i32 %20)
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 0
  %24 = call i32 @write_out(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
