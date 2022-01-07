; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_compare_socket_address.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_compare_socket_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unknown sa_family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @compare_socket_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_socket_address(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1, i32 1
  store i32 %27, i32* %3, align 4
  br label %186

28:                                               ; preds = %2
  %29 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %28
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = bitcast %struct.sockaddr* %35 to i8*
  %37 = bitcast i8* %36 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %37, %struct.sockaddr_in** %6, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %39 = bitcast %struct.sockaddr* %38 to i8*
  %40 = bitcast i8* %39 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %40, %struct.sockaddr_in** %7, align 8
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohl(i32 %44)
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohl(i32 %49)
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %34
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohl(i32 %56)
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ntohl(i32 %61)
  %63 = icmp slt i64 %57, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1, i32 1
  store i32 %65, i32* %3, align 4
  br label %186

66:                                               ; preds = %34
  %67 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ntohs(i32 %69)
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ntohs(i32 %73)
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ntohs(i32 %79)
  %81 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ntohs(i32 %83)
  %85 = icmp slt i64 %80, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 -1, i32 1
  store i32 %87, i32* %3, align 4
  br label %186

88:                                               ; preds = %66
  br label %185

89:                                               ; preds = %28
  %90 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %91 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AF_INET6, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %174

95:                                               ; preds = %89
  %96 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %97 = bitcast %struct.sockaddr* %96 to i8*
  %98 = bitcast i8* %97 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %98, %struct.sockaddr_in6** %8, align 8
  %99 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %100 = bitcast %struct.sockaddr* %99 to i8*
  %101 = bitcast i8* %100 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %101, %struct.sockaddr_in6** %9, align 8
  %102 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcmp(i32 %105, i32 %109, i32 4)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %186

115:                                              ; preds = %95
  %116 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %117 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @ntohs(i32 %118)
  %120 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ntohs(i32 %122)
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %115
  %126 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @ntohs(i32 %128)
  %130 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %131 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @ntohs(i32 %132)
  %134 = icmp slt i64 %129, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 -1, i32 1
  store i32 %136, i32* %3, align 4
  br label %186

137:                                              ; preds = %115
  %138 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %139 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %142 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %137
  %146 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %150 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 -1, i32 1
  store i32 %154, i32* %3, align 4
  br label %186

155:                                              ; preds = %137
  %156 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %157 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %160 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %168 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %166, %169
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 -1, i32 1
  store i32 %172, i32* %3, align 4
  br label %186

173:                                              ; preds = %155
  br label %184

174:                                              ; preds = %89
  %175 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %176 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AF_UNSPEC, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 1, i32* %3, align 4
  br label %186

181:                                              ; preds = %174
  %182 = call i32 @assert(i32 0)
  br label %183

183:                                              ; preds = %181
  br label %184

184:                                              ; preds = %183, %173
  br label %185

185:                                              ; preds = %184, %88
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %180, %163, %145, %125, %113, %76, %52, %18
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
