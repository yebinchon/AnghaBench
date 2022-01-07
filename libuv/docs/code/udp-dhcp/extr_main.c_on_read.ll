; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/udp-dhcp/extr_main.c_on_read.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/udp-dhcp/extr_main.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Read error %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Recv from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Offered IP %d.%d.%d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_read(i32* %0, i64 %1, %struct.TYPE_3__* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [17 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i8* @uv_err_name(i64 %20)
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @uv_close(i32* %23, i32* null)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free(i64 %27)
  br label %84

29:                                               ; preds = %5
  %30 = bitcast [17 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 17, i1 false)
  %31 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in*
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %34 = call i32 @uv_ip4_name(%struct.sockaddr_in* %32, i8* %33, i32 16)
  %35 = load i32, i32* @stderr, align 4
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = bitcast [4 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %46, i8 0, i64 4, i1 false)
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %60, %29
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = mul nsw i32 %52, 8
  %54 = lshr i32 %51, %53
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 %58
  store i8 %56, i8* %59, align 1
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @stderr, align 4
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @free(i64 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @uv_udp_recv_stop(i32* %82)
  br label %84

84:                                               ; preds = %63, %18
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @uv_err_name(i64) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @free(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @uv_ip4_name(%struct.sockaddr_in*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @uv_udp_recv_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
